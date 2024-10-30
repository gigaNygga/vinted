; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [334 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [662 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 251
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 288
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 329
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 189
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 270
	i32 117431740, ; 14: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 15: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 270
	i32 122350210, ; 16: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 17: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 292
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 21: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 225
	i32 176265551, ; 22: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 23: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 272
	i32 184328833, ; 24: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 25: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 326
	i32 199333315, ; 26: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 327
	i32 205061960, ; 27: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 28: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 223
	i32 220171995, ; 29: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 245
	i32 230752869, ; 31: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 32: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 33: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 34: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 35: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 228
	i32 266337479, ; 36: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 287
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 247
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 244
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 298
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 293579439, ; 42: ExoPlayer.Dash.dll => 0x117faaaf => 199
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 326
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 214
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 311
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 246
	i32 347068432, ; 49: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 193
	i32 356389973, ; 50: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 310
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 330
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 322
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 229
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 242
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 452127346, ; 65: ExoPlayer.Database.dll => 0x1af2ea72 => 200
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 69: System.dll => 0x1bff388e => 164
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 244
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 257
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 309
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 303
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 183
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 292
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 179
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 283
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 281
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 87: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 317
	i32 601371474, ; 88: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 89: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 90: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 626887733, ; 91: ExoPlayer.Container => 0x255d8c35 => 197
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 234
	i32 627931235, ; 93: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 315
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 240
	i32 643868501, ; 95: System.Net => 0x2660a755 => 81
	i32 662205335, ; 96: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 97: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 277
	i32 666292255, ; 98: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 221
	i32 672442732, ; 99: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 100: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 101: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 297
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 294
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 289
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 108: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 312
	i32 709557578, ; 109: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 300
	i32 720511267, ; 110: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 293
	i32 722857257, ; 111: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 112: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 113: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 191
	i32 752232764, ; 114: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 115: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 211
	i32 759454413, ; 116: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 117: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 118: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 119: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 321
	i32 789151979, ; 120: Microsoft.Extensions.Options => 0x2f0980eb => 182
	i32 790371945, ; 121: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 235
	i32 804715423, ; 122: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 123: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 249
	i32 812693636, ; 124: ExoPlayer.Dash => 0x3070b884 => 199
	i32 823281589, ; 125: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 126: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 127: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 128: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 129: Xamarin.AndroidX.Print => 0x3246f6cd => 263
	i32 873119928, ; 130: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 131: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 132: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 133: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 915551335, ; 135: ExoPlayer.Ext.MediaSession => 0x36923467 => 205
	i32 926902833, ; 136: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 324
	i32 928116545, ; 137: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 288
	i32 939704684, ; 138: ExoPlayer.Extractor => 0x3802c16c => 203
	i32 952186615, ; 139: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 140: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 293
	i32 966729478, ; 141: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 284
	i32 967690846, ; 142: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 246
	i32 975236339, ; 143: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 144: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 145: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 146: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 148: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 149: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 150: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 267
	i32 1019214401, ; 151: System.Drawing => 0x3cbffa41 => 36
	i32 1028013380, ; 152: ExoPlayer.UI.dll => 0x3d463d44 => 209
	i32 1028951442, ; 153: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 178
	i32 1029334545, ; 154: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 299
	i32 1031528504, ; 155: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 285
	i32 1035644815, ; 156: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 219
	i32 1036536393, ; 157: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 158: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 253
	i32 1067306892, ; 160: GoogleGson => 0x3f9dcf8c => 174
	i32 1082857460, ; 161: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 162: Xamarin.Kotlin.StdLib => 0x409e66d8 => 290
	i32 1098259244, ; 163: System => 0x41761b2c => 164
	i32 1118262833, ; 164: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 312
	i32 1121599056, ; 165: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 252
	i32 1127624469, ; 166: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 181
	i32 1149092582, ; 167: Xamarin.AndroidX.Window => 0x447dc2e6 => 280
	i32 1151313727, ; 168: ExoPlayer.Rtsp => 0x449fa73f => 206
	i32 1168523401, ; 169: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 318
	i32 1170634674, ; 170: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 171: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 276
	i32 1178241025, ; 172: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 261
	i32 1203215381, ; 173: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 316
	i32 1204270330, ; 174: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 221
	i32 1208641965, ; 175: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 176: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 177: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 314
	i32 1243150071, ; 178: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 281
	i32 1253011324, ; 179: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 180: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 298
	i32 1263886435, ; 181: Xamarin.Google.Guava.dll => 0x4b556063 => 286
	i32 1264511973, ; 182: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 271
	i32 1267360935, ; 183: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 275
	i32 1273260888, ; 184: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 226
	i32 1275534314, ; 185: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 294
	i32 1278448581, ; 186: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 218
	i32 1292207520, ; 187: SQLitePCLRaw.core.dll => 0x4d0585a0 => 192
	i32 1293217323, ; 188: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 237
	i32 1309188875, ; 189: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1309209905, ; 190: ExoPlayer.DataSource => 0x4e08f531 => 201
	i32 1322716291, ; 191: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 280
	i32 1324164729, ; 192: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 193: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 194: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 195: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 328
	i32 1376866003, ; 196: Xamarin.AndroidX.SavedState => 0x52114ed3 => 267
	i32 1379779777, ; 197: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1395857551, ; 198: Xamarin.AndroidX.Media.dll => 0x5333188f => 258
	i32 1402170036, ; 199: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 200: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 230
	i32 1406299041, ; 201: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 287
	i32 1408764838, ; 202: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 203: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 204: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 205: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 296
	i32 1434145427, ; 206: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 207: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 284
	i32 1439761251, ; 208: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 209: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 210: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 211: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 212: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 213: es\Microsoft.Maui.Controls.resources => 0x57152abe => 302
	i32 1461234159, ; 214: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 215: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 216: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 217: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 220
	i32 1470490898, ; 218: Microsoft.Extensions.Primitives => 0x57a5e912 => 183
	i32 1479771757, ; 219: System.Collections.Immutable => 0x5833866d => 9
	i32 1480156764, ; 220: ExoPlayer.DataSource.dll => 0x5839665c => 201
	i32 1480492111, ; 221: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 222: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 223: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 268
	i32 1493001747, ; 224: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 306
	i32 1514721132, ; 225: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 301
	i32 1536373174, ; 226: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 227: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 228: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 229: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 230: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 321
	i32 1565862583, ; 231: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 232: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 233: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 234: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 235: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 236
	i32 1592978981, ; 236: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 237: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 285
	i32 1601112923, ; 238: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 239: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 240: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 241: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 256
	i32 1622358360, ; 242: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 243: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 279
	i32 1635184631, ; 244: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 240
	i32 1636350590, ; 245: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 233
	i32 1638652436, ; 246: CommunityToolkit.Maui.MediaElement => 0x61abda14 => 173
	i32 1639515021, ; 247: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 248: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 249: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 250: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 251: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 273
	i32 1658251792, ; 252: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 282
	i32 1670060433, ; 253: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 228
	i32 1675553242, ; 254: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 255: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 256: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 257: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 258: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 259: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 260: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 291
	i32 1700397376, ; 261: ExoPlayer.Transformer => 0x655a0140 => 208
	i32 1701541528, ; 262: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 263: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 193
	i32 1720223769, ; 264: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 249
	i32 1726116996, ; 265: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 266: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 267: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 224
	i32 1736233607, ; 268: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 319
	i32 1743415430, ; 269: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 297
	i32 1744735666, ; 270: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 271: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 272: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 273: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 274: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765620304, ; 275: ExoPlayer.Core => 0x693d3a50 => 198
	i32 1765942094, ; 276: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 277: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 272
	i32 1770582343, ; 278: Microsoft.Extensions.Logging.dll => 0x6988f147 => 179
	i32 1776026572, ; 279: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 280: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 281: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 282: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 313
	i32 1788241197, ; 283: Xamarin.AndroidX.Fragment => 0x6a96652d => 242
	i32 1793755602, ; 284: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 305
	i32 1808609942, ; 285: Xamarin.AndroidX.Loader => 0x6bcd3296 => 256
	i32 1813058853, ; 286: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 290
	i32 1813201214, ; 287: Xamarin.Google.Android.Material => 0x6c13413e => 282
	i32 1818569960, ; 288: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 262
	i32 1818787751, ; 289: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 290: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 291: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 292: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 180
	i32 1842015223, ; 293: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 325
	i32 1847515442, ; 294: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 211
	i32 1853025655, ; 295: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 322
	i32 1858542181, ; 296: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 297: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 298: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 304
	i32 1879696579, ; 299: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 300: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 222
	i32 1888955245, ; 301: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 302: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 303: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 304: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 305: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1926145099, ; 306: ExoPlayer.Container.dll => 0x72cea44b => 197
	i32 1939592360, ; 307: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 308: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 309: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 269
	i32 1968388702, ; 310: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 175
	i32 1983156543, ; 311: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 291
	i32 1984283898, ; 312: ExoPlayer.Ext.MediaSession.dll => 0x7645c4fa => 205
	i32 1985761444, ; 313: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 213
	i32 2003115576, ; 314: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 301
	i32 2011961780, ; 315: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 316: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 253
	i32 2025202353, ; 317: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 296
	i32 2031763787, ; 318: Xamarin.Android.Glide => 0x791a414b => 210
	i32 2045470958, ; 319: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 320: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 248
	i32 2060060697, ; 321: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 322: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 300
	i32 2070888862, ; 323: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 324: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 325: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 326: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 194
	i32 2106312818, ; 327: ExoPlayer.Decoder => 0x7d8bc872 => 202
	i32 2113912252, ; 328: ExoPlayer.UI => 0x7dffbdbc => 209
	i32 2127167465, ; 329: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 330: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 331: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 332: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 333: Microsoft.Maui => 0x80bd55ad => 187
	i32 2169148018, ; 334: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 308
	i32 2181898931, ; 335: Microsoft.Extensions.Options.dll => 0x820d22b3 => 182
	i32 2192057212, ; 336: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 180
	i32 2193016926, ; 337: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 338: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 295
	i32 2201231467, ; 339: System.Net.Http => 0x8334206b => 64
	i32 2202964214, ; 340: ExoPlayer.dll => 0x834e90f6 => 195
	i32 2207618523, ; 341: it\Microsoft.Maui.Controls.resources => 0x839595db => 310
	i32 2217644978, ; 342: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 276
	i32 2222056684, ; 343: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2239138732, ; 344: ExoPlayer.SmoothStreaming => 0x85768bac => 207
	i32 2244775296, ; 345: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 257
	i32 2252106437, ; 346: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 347: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 348: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 349: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 176
	i32 2267999099, ; 350: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 212
	i32 2270573516, ; 351: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 304
	i32 2279755925, ; 352: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 265
	i32 2293034957, ; 353: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 354: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 355: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 356: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 314
	i32 2305521784, ; 357: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 358: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 216
	i32 2320631194, ; 359: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 360: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 361: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 362: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 363: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 364: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 175
	i32 2378619854, ; 365: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 366: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 367: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 309
	i32 2401565422, ; 368: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 369: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 239
	i32 2421380589, ; 370: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 371: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 226
	i32 2427813419, ; 372: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 306
	i32 2435356389, ; 373: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 374: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2437192331, ; 375: CommunityToolkit.Maui.MediaElement.dll => 0x91449a8b => 173
	i32 2454642406, ; 376: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 377: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 378: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 379: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 191
	i32 2465532216, ; 380: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 229
	i32 2471841756, ; 381: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 382: Java.Interop.dll => 0x93918882 => 168
	i32 2476233210, ; 383: ExoPlayer => 0x939851fa => 195
	i32 2480646305, ; 384: Microsoft.Maui.Controls => 0x93dba8a1 => 185
	i32 2483903535, ; 385: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 386: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 387: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 388: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 389: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 251
	i32 2515854816, ; 390: ExoPlayer.Common => 0x95f4e5e0 => 196
	i32 2522472828, ; 391: Xamarin.Android.Glide.dll => 0x9659e17c => 210
	i32 2538310050, ; 392: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 393: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 307
	i32 2562349572, ; 394: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 395: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 396: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 252
	i32 2581819634, ; 397: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 275
	i32 2585220780, ; 398: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 399: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 400: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 401: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 316
	i32 2605712449, ; 402: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 295
	i32 2615233544, ; 403: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 243
	i32 2616218305, ; 404: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 181
	i32 2617129537, ; 405: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 406: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 407: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 233
	i32 2624644809, ; 408: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 238
	i32 2626028643, ; 409: ExoPlayer.Rtsp.dll => 0x9c860463 => 206
	i32 2626831493, ; 410: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 311
	i32 2627185994, ; 411: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 412: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 413: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 247
	i32 2663391936, ; 414: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 212
	i32 2663698177, ; 415: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 416: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 417: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 418: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 419: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 420: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 421: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 273
	i32 2713040075, ; 422: ExoPlayer.Hls => 0xa1b5b4cb => 204
	i32 2715334215, ; 423: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 424: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 425: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 426: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 427: Xamarin.AndroidX.Activity => 0xa2e0939b => 214
	i32 2735172069, ; 428: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 429: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 220
	i32 2740948882, ; 430: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 431: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 432: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 317
	i32 2758225723, ; 433: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 186
	i32 2764765095, ; 434: Microsoft.Maui.dll => 0xa4caf7a7 => 187
	i32 2765824710, ; 435: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 436: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 289
	i32 2778768386, ; 437: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 278
	i32 2779977773, ; 438: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 266
	i32 2785988530, ; 439: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 323
	i32 2788224221, ; 440: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 243
	i32 2796087574, ; 441: ExoPlayer.Extractor.dll => 0xa6a8e916 => 203
	i32 2801831435, ; 442: Microsoft.Maui.Graphics => 0xa7008e0b => 189
	i32 2803228030, ; 443: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 444: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 302
	i32 2810250172, ; 445: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 230
	i32 2819470561, ; 446: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 447: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 448: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 266
	i32 2824502124, ; 449: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 450: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 315
	i32 2838993487, ; 451: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 254
	i32 2849599387, ; 452: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 453: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 278
	i32 2855708567, ; 454: Xamarin.AndroidX.Transition => 0xaa36a797 => 274
	i32 2861098320, ; 455: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 456: Microsoft.Maui.Essentials => 0xaa8a4878 => 188
	i32 2870099610, ; 457: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 215
	i32 2875164099, ; 458: Jsr305Binding.dll => 0xab5f85c3 => 283
	i32 2875220617, ; 459: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 460: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 241
	i32 2887636118, ; 461: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 462: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 463: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 464: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 465: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 466: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 467: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 279
	i32 2919462931, ; 468: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 469: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 217
	i32 2936416060, ; 470: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 471: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 472: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 473: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960379616, ; 474: Xamarin.Google.Guava => 0xb073cee0 => 286
	i32 2968338931, ; 475: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 476: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 477: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 237
	i32 2987532451, ; 478: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 269
	i32 2996846495, ; 479: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 250
	i32 3016983068, ; 480: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 271
	i32 3023353419, ; 481: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 482: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 245
	i32 3027462113, ; 483: ExoPlayer.Common.dll => 0xb47367e1 => 196
	i32 3038032645, ; 484: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 330
	i32 3056245963, ; 485: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 268
	i32 3057625584, ; 486: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 259
	i32 3059408633, ; 487: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 488: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 489: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 490: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 308
	i32 3090735792, ; 491: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 492: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 493: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 494: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 495: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 496: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 497: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3144327419, ; 498: ExoPlayer.Hls.dll => 0xbb6aa0fb => 204
	i32 3147165239, ; 499: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 500: GoogleGson.dll => 0xbba64c02 => 174
	i32 3159123045, ; 501: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 502: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 503: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 260
	i32 3190271366, ; 504: ExoPlayer.Decoder.dll => 0xbe27ad86 => 202
	i32 3192346100, ; 505: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 506: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 507: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 508: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 509: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 236
	i32 3220365878, ; 510: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 511: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 512: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 513: Xamarin.AndroidX.CardView => 0xc235e84d => 224
	i32 3265493905, ; 514: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 515: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 516: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 517: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 518: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 519: SQLite-net.dll => 0xc3e9b3a2 => 190
	i32 3290767353, ; 520: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3295554042, ; 521: Vinted.dll => 0xc46e29fa => 0
	i32 3299363146, ; 522: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 523: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 524: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 303
	i32 3316684772, ; 525: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 526: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 234
	i32 3317144872, ; 527: System.Data => 0xc5b79d28 => 24
	i32 3329734229, ; 528: ExoPlayer.Database => 0xc677b655 => 200
	i32 3340431453, ; 529: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 222
	i32 3345895724, ; 530: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 264
	i32 3346324047, ; 531: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 261
	i32 3357674450, ; 532: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 320
	i32 3358260929, ; 533: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 534: SQLitePCLRaw.core => 0xc849ca45 => 192
	i32 3362336904, ; 535: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 215
	i32 3362522851, ; 536: Xamarin.AndroidX.Core => 0xc86c06e3 => 231
	i32 3366347497, ; 537: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 538: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 265
	i32 3381016424, ; 539: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 299
	i32 3395150330, ; 540: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3396979385, ; 541: ExoPlayer.Transformer.dll => 0xca79cab9 => 208
	i32 3403906625, ; 542: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 543: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 235
	i32 3428513518, ; 544: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 177
	i32 3429136800, ; 545: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 546: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 547: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 238
	i32 3445260447, ; 548: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 549: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 184
	i32 3463511458, ; 550: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 307
	i32 3471940407, ; 551: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 552: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 553: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 320
	i32 3484440000, ; 554: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 319
	i32 3485117614, ; 555: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 556: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 557: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 227
	i32 3509114376, ; 558: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 559: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 560: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 561: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 562: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 563: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 564: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 327
	i32 3597029428, ; 565: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 213
	i32 3598340787, ; 566: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 567: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 568: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 569: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 263
	i32 3633644679, ; 570: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 217
	i32 3638274909, ; 571: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 572: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 248
	i32 3643446276, ; 573: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 324
	i32 3643854240, ; 574: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 260
	i32 3645089577, ; 575: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 576: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 176
	i32 3660523487, ; 577: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 578: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 579: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 223
	i32 3684561358, ; 580: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 227
	i32 3697841164, ; 581: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 329
	i32 3700866549, ; 582: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 583: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 232
	i32 3716563718, ; 584: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 585: Xamarin.AndroidX.Annotation => 0xdda814c6 => 216
	i32 3724971120, ; 586: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 259
	i32 3732100267, ; 587: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 588: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 589: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 590: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 591: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 194
	i32 3786282454, ; 592: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 225
	i32 3792276235, ; 593: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 594: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 184
	i32 3802395368, ; 595: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807000954, ; 596: Vinted => 0xe2ea397a => 0
	i32 3819260425, ; 597: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822602673, ; 598: Xamarin.AndroidX.Media => 0xe3d849b1 => 258
	i32 3823082795, ; 599: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 600: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 601: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 178
	i32 3844307129, ; 602: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 603: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 604: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 605: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 606: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 607: SQLite-net => 0xe70c9739 => 190
	i32 3885497537, ; 608: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 609: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 274
	i32 3888767677, ; 610: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 264
	i32 3889960447, ; 611: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 328
	i32 3896106733, ; 612: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 613: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 231
	i32 3901907137, ; 614: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 615: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 616: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 277
	i32 3928044579, ; 617: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 618: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 619: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 262
	i32 3945713374, ; 620: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 621: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 622: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 219
	i32 3959773229, ; 623: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 250
	i32 3980434154, ; 624: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 323
	i32 3987592930, ; 625: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 305
	i32 4003436829, ; 626: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 627: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 218
	i32 4025784931, ; 628: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 629: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 186
	i32 4054681211, ; 630: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 631: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 632: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 633: Microsoft.Maui.Essentials.dll => 0xf40add04 => 188
	i32 4099507663, ; 634: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 635: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 636: Xamarin.AndroidX.Emoji2 => 0xf479582c => 239
	i32 4102112229, ; 637: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 318
	i32 4125707920, ; 638: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 313
	i32 4126470640, ; 639: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 177
	i32 4127667938, ; 640: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 641: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 642: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 643: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 325
	i32 4151237749, ; 644: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 645: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 646: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 647: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4173364138, ; 648: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 207
	i32 4181436372, ; 649: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 650: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 255
	i32 4185676441, ; 651: System.Security => 0xf97c5a99 => 130
	i32 4190597220, ; 652: ExoPlayer.Core.dll => 0xf9c77064 => 198
	i32 4196529839, ; 653: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 654: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 655: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 232
	i32 4258378803, ; 656: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 254
	i32 4260525087, ; 657: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 658: Microsoft.Maui.Controls.dll => 0xfea12dee => 185
	i32 4274976490, ; 659: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 660: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 255
	i32 4294763496 ; 661: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 241
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [662 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 251, ; 3
	i32 288, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 329, ; 9
	i32 124, ; 10
	i32 189, ; 11
	i32 102, ; 12
	i32 270, ; 13
	i32 107, ; 14
	i32 270, ; 15
	i32 139, ; 16
	i32 292, ; 17
	i32 77, ; 18
	i32 124, ; 19
	i32 13, ; 20
	i32 225, ; 21
	i32 132, ; 22
	i32 272, ; 23
	i32 151, ; 24
	i32 326, ; 25
	i32 327, ; 26
	i32 18, ; 27
	i32 223, ; 28
	i32 26, ; 29
	i32 245, ; 30
	i32 1, ; 31
	i32 59, ; 32
	i32 42, ; 33
	i32 91, ; 34
	i32 228, ; 35
	i32 287, ; 36
	i32 147, ; 37
	i32 247, ; 38
	i32 244, ; 39
	i32 298, ; 40
	i32 54, ; 41
	i32 199, ; 42
	i32 69, ; 43
	i32 326, ; 44
	i32 214, ; 45
	i32 83, ; 46
	i32 311, ; 47
	i32 246, ; 48
	i32 193, ; 49
	i32 310, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 330, ; 58
	i32 165, ; 59
	i32 322, ; 60
	i32 229, ; 61
	i32 12, ; 62
	i32 242, ; 63
	i32 125, ; 64
	i32 200, ; 65
	i32 152, ; 66
	i32 113, ; 67
	i32 166, ; 68
	i32 164, ; 69
	i32 244, ; 70
	i32 257, ; 71
	i32 84, ; 72
	i32 309, ; 73
	i32 303, ; 74
	i32 183, ; 75
	i32 150, ; 76
	i32 292, ; 77
	i32 60, ; 78
	i32 179, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 40, ; 83
	i32 283, ; 84
	i32 281, ; 85
	i32 120, ; 86
	i32 317, ; 87
	i32 52, ; 88
	i32 44, ; 89
	i32 119, ; 90
	i32 197, ; 91
	i32 234, ; 92
	i32 315, ; 93
	i32 240, ; 94
	i32 81, ; 95
	i32 136, ; 96
	i32 277, ; 97
	i32 221, ; 98
	i32 8, ; 99
	i32 73, ; 100
	i32 297, ; 101
	i32 155, ; 102
	i32 294, ; 103
	i32 154, ; 104
	i32 92, ; 105
	i32 289, ; 106
	i32 45, ; 107
	i32 312, ; 108
	i32 300, ; 109
	i32 293, ; 110
	i32 109, ; 111
	i32 129, ; 112
	i32 191, ; 113
	i32 25, ; 114
	i32 211, ; 115
	i32 72, ; 116
	i32 55, ; 117
	i32 46, ; 118
	i32 321, ; 119
	i32 182, ; 120
	i32 235, ; 121
	i32 22, ; 122
	i32 249, ; 123
	i32 199, ; 124
	i32 86, ; 125
	i32 43, ; 126
	i32 160, ; 127
	i32 71, ; 128
	i32 263, ; 129
	i32 3, ; 130
	i32 42, ; 131
	i32 63, ; 132
	i32 16, ; 133
	i32 53, ; 134
	i32 205, ; 135
	i32 324, ; 136
	i32 288, ; 137
	i32 203, ; 138
	i32 105, ; 139
	i32 293, ; 140
	i32 284, ; 141
	i32 246, ; 142
	i32 34, ; 143
	i32 158, ; 144
	i32 85, ; 145
	i32 32, ; 146
	i32 12, ; 147
	i32 51, ; 148
	i32 56, ; 149
	i32 267, ; 150
	i32 36, ; 151
	i32 209, ; 152
	i32 178, ; 153
	i32 299, ; 154
	i32 285, ; 155
	i32 219, ; 156
	i32 35, ; 157
	i32 58, ; 158
	i32 253, ; 159
	i32 174, ; 160
	i32 17, ; 161
	i32 290, ; 162
	i32 164, ; 163
	i32 312, ; 164
	i32 252, ; 165
	i32 181, ; 166
	i32 280, ; 167
	i32 206, ; 168
	i32 318, ; 169
	i32 153, ; 170
	i32 276, ; 171
	i32 261, ; 172
	i32 316, ; 173
	i32 221, ; 174
	i32 29, ; 175
	i32 52, ; 176
	i32 314, ; 177
	i32 281, ; 178
	i32 5, ; 179
	i32 298, ; 180
	i32 286, ; 181
	i32 271, ; 182
	i32 275, ; 183
	i32 226, ; 184
	i32 294, ; 185
	i32 218, ; 186
	i32 192, ; 187
	i32 237, ; 188
	i32 85, ; 189
	i32 201, ; 190
	i32 280, ; 191
	i32 61, ; 192
	i32 112, ; 193
	i32 57, ; 194
	i32 328, ; 195
	i32 267, ; 196
	i32 99, ; 197
	i32 258, ; 198
	i32 19, ; 199
	i32 230, ; 200
	i32 287, ; 201
	i32 111, ; 202
	i32 101, ; 203
	i32 102, ; 204
	i32 296, ; 205
	i32 104, ; 206
	i32 284, ; 207
	i32 71, ; 208
	i32 38, ; 209
	i32 32, ; 210
	i32 103, ; 211
	i32 73, ; 212
	i32 302, ; 213
	i32 9, ; 214
	i32 123, ; 215
	i32 46, ; 216
	i32 220, ; 217
	i32 183, ; 218
	i32 9, ; 219
	i32 201, ; 220
	i32 43, ; 221
	i32 4, ; 222
	i32 268, ; 223
	i32 306, ; 224
	i32 301, ; 225
	i32 31, ; 226
	i32 138, ; 227
	i32 92, ; 228
	i32 93, ; 229
	i32 321, ; 230
	i32 49, ; 231
	i32 141, ; 232
	i32 112, ; 233
	i32 140, ; 234
	i32 236, ; 235
	i32 115, ; 236
	i32 285, ; 237
	i32 157, ; 238
	i32 76, ; 239
	i32 79, ; 240
	i32 256, ; 241
	i32 37, ; 242
	i32 279, ; 243
	i32 240, ; 244
	i32 233, ; 245
	i32 173, ; 246
	i32 64, ; 247
	i32 138, ; 248
	i32 15, ; 249
	i32 116, ; 250
	i32 273, ; 251
	i32 282, ; 252
	i32 228, ; 253
	i32 48, ; 254
	i32 70, ; 255
	i32 80, ; 256
	i32 126, ; 257
	i32 94, ; 258
	i32 121, ; 259
	i32 291, ; 260
	i32 208, ; 261
	i32 26, ; 262
	i32 193, ; 263
	i32 249, ; 264
	i32 97, ; 265
	i32 28, ; 266
	i32 224, ; 267
	i32 319, ; 268
	i32 297, ; 269
	i32 149, ; 270
	i32 169, ; 271
	i32 4, ; 272
	i32 98, ; 273
	i32 33, ; 274
	i32 198, ; 275
	i32 93, ; 276
	i32 272, ; 277
	i32 179, ; 278
	i32 21, ; 279
	i32 41, ; 280
	i32 170, ; 281
	i32 313, ; 282
	i32 242, ; 283
	i32 305, ; 284
	i32 256, ; 285
	i32 290, ; 286
	i32 282, ; 287
	i32 262, ; 288
	i32 2, ; 289
	i32 134, ; 290
	i32 111, ; 291
	i32 180, ; 292
	i32 325, ; 293
	i32 211, ; 294
	i32 322, ; 295
	i32 58, ; 296
	i32 95, ; 297
	i32 304, ; 298
	i32 39, ; 299
	i32 222, ; 300
	i32 25, ; 301
	i32 94, ; 302
	i32 89, ; 303
	i32 99, ; 304
	i32 10, ; 305
	i32 197, ; 306
	i32 87, ; 307
	i32 100, ; 308
	i32 269, ; 309
	i32 175, ; 310
	i32 291, ; 311
	i32 205, ; 312
	i32 213, ; 313
	i32 301, ; 314
	i32 7, ; 315
	i32 253, ; 316
	i32 296, ; 317
	i32 210, ; 318
	i32 88, ; 319
	i32 248, ; 320
	i32 154, ; 321
	i32 300, ; 322
	i32 33, ; 323
	i32 116, ; 324
	i32 82, ; 325
	i32 194, ; 326
	i32 202, ; 327
	i32 209, ; 328
	i32 20, ; 329
	i32 11, ; 330
	i32 162, ; 331
	i32 3, ; 332
	i32 187, ; 333
	i32 308, ; 334
	i32 182, ; 335
	i32 180, ; 336
	i32 84, ; 337
	i32 295, ; 338
	i32 64, ; 339
	i32 195, ; 340
	i32 310, ; 341
	i32 276, ; 342
	i32 143, ; 343
	i32 207, ; 344
	i32 257, ; 345
	i32 157, ; 346
	i32 41, ; 347
	i32 117, ; 348
	i32 176, ; 349
	i32 212, ; 350
	i32 304, ; 351
	i32 265, ; 352
	i32 131, ; 353
	i32 75, ; 354
	i32 66, ; 355
	i32 314, ; 356
	i32 172, ; 357
	i32 216, ; 358
	i32 143, ; 359
	i32 106, ; 360
	i32 151, ; 361
	i32 70, ; 362
	i32 156, ; 363
	i32 175, ; 364
	i32 121, ; 365
	i32 127, ; 366
	i32 309, ; 367
	i32 152, ; 368
	i32 239, ; 369
	i32 141, ; 370
	i32 226, ; 371
	i32 306, ; 372
	i32 20, ; 373
	i32 14, ; 374
	i32 173, ; 375
	i32 135, ; 376
	i32 75, ; 377
	i32 59, ; 378
	i32 191, ; 379
	i32 229, ; 380
	i32 167, ; 381
	i32 168, ; 382
	i32 195, ; 383
	i32 185, ; 384
	i32 15, ; 385
	i32 74, ; 386
	i32 6, ; 387
	i32 23, ; 388
	i32 251, ; 389
	i32 196, ; 390
	i32 210, ; 391
	i32 91, ; 392
	i32 307, ; 393
	i32 1, ; 394
	i32 136, ; 395
	i32 252, ; 396
	i32 275, ; 397
	i32 134, ; 398
	i32 69, ; 399
	i32 146, ; 400
	i32 316, ; 401
	i32 295, ; 402
	i32 243, ; 403
	i32 181, ; 404
	i32 88, ; 405
	i32 96, ; 406
	i32 233, ; 407
	i32 238, ; 408
	i32 206, ; 409
	i32 311, ; 410
	i32 31, ; 411
	i32 45, ; 412
	i32 247, ; 413
	i32 212, ; 414
	i32 109, ; 415
	i32 158, ; 416
	i32 35, ; 417
	i32 22, ; 418
	i32 114, ; 419
	i32 57, ; 420
	i32 273, ; 421
	i32 204, ; 422
	i32 144, ; 423
	i32 118, ; 424
	i32 120, ; 425
	i32 110, ; 426
	i32 214, ; 427
	i32 139, ; 428
	i32 220, ; 429
	i32 54, ; 430
	i32 105, ; 431
	i32 317, ; 432
	i32 186, ; 433
	i32 187, ; 434
	i32 133, ; 435
	i32 289, ; 436
	i32 278, ; 437
	i32 266, ; 438
	i32 323, ; 439
	i32 243, ; 440
	i32 203, ; 441
	i32 189, ; 442
	i32 159, ; 443
	i32 302, ; 444
	i32 230, ; 445
	i32 163, ; 446
	i32 132, ; 447
	i32 266, ; 448
	i32 161, ; 449
	i32 315, ; 450
	i32 254, ; 451
	i32 140, ; 452
	i32 278, ; 453
	i32 274, ; 454
	i32 169, ; 455
	i32 188, ; 456
	i32 215, ; 457
	i32 283, ; 458
	i32 40, ; 459
	i32 241, ; 460
	i32 81, ; 461
	i32 56, ; 462
	i32 37, ; 463
	i32 97, ; 464
	i32 166, ; 465
	i32 172, ; 466
	i32 279, ; 467
	i32 82, ; 468
	i32 217, ; 469
	i32 98, ; 470
	i32 30, ; 471
	i32 159, ; 472
	i32 18, ; 473
	i32 286, ; 474
	i32 127, ; 475
	i32 119, ; 476
	i32 237, ; 477
	i32 269, ; 478
	i32 250, ; 479
	i32 271, ; 480
	i32 165, ; 481
	i32 245, ; 482
	i32 196, ; 483
	i32 330, ; 484
	i32 268, ; 485
	i32 259, ; 486
	i32 170, ; 487
	i32 16, ; 488
	i32 144, ; 489
	i32 308, ; 490
	i32 125, ; 491
	i32 118, ; 492
	i32 38, ; 493
	i32 115, ; 494
	i32 47, ; 495
	i32 142, ; 496
	i32 117, ; 497
	i32 204, ; 498
	i32 34, ; 499
	i32 174, ; 500
	i32 95, ; 501
	i32 53, ; 502
	i32 260, ; 503
	i32 202, ; 504
	i32 129, ; 505
	i32 153, ; 506
	i32 24, ; 507
	i32 161, ; 508
	i32 236, ; 509
	i32 148, ; 510
	i32 104, ; 511
	i32 89, ; 512
	i32 224, ; 513
	i32 60, ; 514
	i32 142, ; 515
	i32 100, ; 516
	i32 5, ; 517
	i32 13, ; 518
	i32 190, ; 519
	i32 122, ; 520
	i32 0, ; 521
	i32 135, ; 522
	i32 28, ; 523
	i32 303, ; 524
	i32 72, ; 525
	i32 234, ; 526
	i32 24, ; 527
	i32 200, ; 528
	i32 222, ; 529
	i32 264, ; 530
	i32 261, ; 531
	i32 320, ; 532
	i32 137, ; 533
	i32 192, ; 534
	i32 215, ; 535
	i32 231, ; 536
	i32 168, ; 537
	i32 265, ; 538
	i32 299, ; 539
	i32 101, ; 540
	i32 208, ; 541
	i32 123, ; 542
	i32 235, ; 543
	i32 177, ; 544
	i32 163, ; 545
	i32 167, ; 546
	i32 238, ; 547
	i32 39, ; 548
	i32 184, ; 549
	i32 307, ; 550
	i32 17, ; 551
	i32 171, ; 552
	i32 320, ; 553
	i32 319, ; 554
	i32 137, ; 555
	i32 150, ; 556
	i32 227, ; 557
	i32 155, ; 558
	i32 130, ; 559
	i32 19, ; 560
	i32 65, ; 561
	i32 147, ; 562
	i32 47, ; 563
	i32 327, ; 564
	i32 213, ; 565
	i32 79, ; 566
	i32 61, ; 567
	i32 106, ; 568
	i32 263, ; 569
	i32 217, ; 570
	i32 49, ; 571
	i32 248, ; 572
	i32 324, ; 573
	i32 260, ; 574
	i32 14, ; 575
	i32 176, ; 576
	i32 68, ; 577
	i32 171, ; 578
	i32 223, ; 579
	i32 227, ; 580
	i32 329, ; 581
	i32 78, ; 582
	i32 232, ; 583
	i32 108, ; 584
	i32 216, ; 585
	i32 259, ; 586
	i32 67, ; 587
	i32 63, ; 588
	i32 27, ; 589
	i32 160, ; 590
	i32 194, ; 591
	i32 225, ; 592
	i32 10, ; 593
	i32 184, ; 594
	i32 11, ; 595
	i32 0, ; 596
	i32 78, ; 597
	i32 258, ; 598
	i32 126, ; 599
	i32 83, ; 600
	i32 178, ; 601
	i32 66, ; 602
	i32 107, ; 603
	i32 65, ; 604
	i32 128, ; 605
	i32 122, ; 606
	i32 190, ; 607
	i32 77, ; 608
	i32 274, ; 609
	i32 264, ; 610
	i32 328, ; 611
	i32 8, ; 612
	i32 231, ; 613
	i32 2, ; 614
	i32 44, ; 615
	i32 277, ; 616
	i32 156, ; 617
	i32 128, ; 618
	i32 262, ; 619
	i32 23, ; 620
	i32 133, ; 621
	i32 219, ; 622
	i32 250, ; 623
	i32 323, ; 624
	i32 305, ; 625
	i32 29, ; 626
	i32 218, ; 627
	i32 62, ; 628
	i32 186, ; 629
	i32 90, ; 630
	i32 87, ; 631
	i32 148, ; 632
	i32 188, ; 633
	i32 36, ; 634
	i32 86, ; 635
	i32 239, ; 636
	i32 318, ; 637
	i32 313, ; 638
	i32 177, ; 639
	i32 50, ; 640
	i32 6, ; 641
	i32 90, ; 642
	i32 325, ; 643
	i32 21, ; 644
	i32 162, ; 645
	i32 96, ; 646
	i32 50, ; 647
	i32 207, ; 648
	i32 113, ; 649
	i32 255, ; 650
	i32 130, ; 651
	i32 198, ; 652
	i32 76, ; 653
	i32 27, ; 654
	i32 232, ; 655
	i32 254, ; 656
	i32 7, ; 657
	i32 185, ; 658
	i32 110, ; 659
	i32 255, ; 660
	i32 241 ; 661
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
