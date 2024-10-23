using SQLite;
using Vinted.Models;

namespace Vinted
{
    public class LocalDbService
    {
        private const string dbName = "vinted_db.db3";
        private readonly SQLiteAsyncConnection _connection;

        public LocalDbService()
        {
            _connection = new SQLiteAsyncConnection(Path.Combine(FileSystem.AppDataDirectory, dbName));
            _connection.CreateTableAsync<Product>().Wait();
        }

        public async Task<List<Product>> GetAllProducts()
        {
            return await _connection.Table<Product>().ToListAsync();
        }

        public async Task<Product> GetProductById(int id)
        {
            return await _connection.Table<Product>().Where(x => x.Id == id).FirstOrDefaultAsync();
        }

        public async Task CreateProduct(Product product)
        {
            await _connection.InsertAsync(product);
        }

        public async Task UpdateProduct(Product product)
        {
            await _connection.UpdateAsync(product);
        }

        public async Task DeleteProduct(int id)
        {
            var product = await GetProductById(id);
            if (product != null)
            {
                await _connection.DeleteAsync(product);
            }
        }
    }
}
