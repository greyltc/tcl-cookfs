package ifneeded vfs::cookfs 1.4 [list source [file join $dir cookvfs.tcl]]
package ifneeded vfs::cookfs::tcl::memchan 1.4 [list source [file join $dir memchan.tcl]]
package ifneeded vfs::cookfs::tcl::vfs 1.4 [list source [file join $dir vfs.tcl]]
package ifneeded vfs::cookfs::tcl::readerchannel 1.4 [list source [file join $dir readerchannel.tcl]]
package ifneeded vfs::cookfs::tcl::writer 1.4 [list source [file join $dir writer.tcl]]
package ifneeded vfs::cookfs::tcl::pages 1.4 [list source [file join $dir pages.tcl]]
package ifneeded vfs::cookfs::tcl::fsindex 1.4 [list source [file join $dir fsindex.tcl]]
package ifneeded vfs::cookfs::tcl::optimize 1.4 [list source [file join $dir optimize.tcl]]
package ifneeded vfs::cookfs::asyncworker::process 1.4 [list source [file join $dir asyncworker_process.tcl]]
package ifneeded vfs::cookfs::asyncworker::thread 1.4 [list source [file join $dir asyncworker_thread.tcl]]
package ifneeded vfs::cookfs::pkgconfig 1.4 [list source [file join $dir pkgconfig.tcl]]

package ifneeded vfs::cookfs::c 1.4 [list load [file join $dir libcookfs1.4.so] cookfs]
