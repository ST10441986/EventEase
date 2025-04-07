using System;
using System.Collections.Generic;

namespace VMSDB.Models;

public partial class Venue
{
    public int VenueId { get; set; }

    public string Location { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string Capacity { get; set; } = null!;

    public string ImageUrl { get; set; } = null!;

    public virtual ICollection<Booking> Bookings { get; set; } = new List<Booking>();
}
