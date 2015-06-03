using System;
using Microsoft.VisualStudio.TestPlatform.UnitTestFramework;
using SQLite.Core;

namespace SQLiteTests
{
    [TestClass]
    public class SQLiteCoreTests
    {
        [TestMethod]
        public void TestOpenDatabase()
        {
            var path = System.IO.Path.Combine(Windows.Storage.ApplicationData.Current.LocalFolder.Path, "test.db");

            Database db;
            var result = Sqlite3.sqlite3_open_v2(path, out db, 6, "");
            Assert.IsTrue(result == 0);

            Sqlite3.sqlite3_close(db);
        }
    }
}
