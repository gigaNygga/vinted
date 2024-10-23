using System.ComponentModel;

namespace Vinted.Enums
{
    public enum ProductCondition
    {
        [Description("Nowy")]
        New,

        [Description("Bardzo dobry")]
        VeryGood,

        [Description("Dobry")]
        Good,

        [Description("Akceptowalny")]
        Acceptable
    }
}
