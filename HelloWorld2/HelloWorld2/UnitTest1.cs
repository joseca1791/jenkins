using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using HelloWorld1;

namespace HelloWorld2
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            Assert.AreEqual("Hello World", Program.CreateMessage());
        }
    }
}
