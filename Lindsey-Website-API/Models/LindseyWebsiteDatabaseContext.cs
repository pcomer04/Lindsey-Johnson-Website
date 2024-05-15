using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Lindsey_Website_API.Models;

public partial class LindseyWebsiteDatabaseContext : DbContext
{
    public LindseyWebsiteDatabaseContext()
    {
    }

    public LindseyWebsiteDatabaseContext(DbContextOptions<LindseyWebsiteDatabaseContext> options)
        : base(options)
    {
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=DESKTOP-GP97G8K;Database=Lindsey-Website-Database;Trusted_Connection=True;Encrypt=false");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
