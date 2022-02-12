using Microsoft.VisualStudio.TestTools.UnitTesting;
using SampleWebApp.Models;
namespace UnitTest
{
    [TestClass]
    public class CustomerTest
    {
        [TestMethod]
        public void Testnewcustomer()
        {
            Customer obj = new Customer(1,"userA");
            Assert.AreEqual(1, obj.Id);
            Assert.AreEqual("userA", obj.Name);
        }
    }
}
