namespace SampleWebApp.Models
{
    public class Customer
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public Customer (int pId, string pName) {
            Id = pId;   
            Name = pName;
        }
    }
}
