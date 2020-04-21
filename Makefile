
TOP = .
LTCOMPILE = gcc
TEMP_STORE = 

CFLAGS+= -lpthread -ldl

LIBOBJS0 = $(main_file).o alter.o analyze.o attach.o auth.o \
         backup.o bitvec.o btmutex.o btree.o build.o \
         callback.o complete.o ctime.o \
         date.o dbpage.o dbstat.o delete.o \
         expr.o fault.o fkey.o \
         func.o global.o hash.o \
         insert.o legacy.o loadext.o \
         main.o malloc.o mem0.o mem1.o mem2.o mem3.o mem5.o \
         memdb.o memjournal.o \
         mutex.o mutex_noop.o mutex_unix.o mutex_w32.o \
         notify.o os.o os_unix.o os_win.o \
         pager.o pcache.o pcache1.o pragma.o prepare.o printf.o \
         random.o resolve.o rowset.o \
         select.o status.o \
         table.o threads.o tokenize.o treeview.o trigger.o \
         update.o upsert.o util.o vacuum.o \
         vdbe.o vdbeapi.o vdbeaux.o vdbeblob.o vdbemem.o vdbesort.o \
         vdbetrace.o wal.o walker.o where.o wherecode.o whereexpr.o \
         window.o utf.o vtab.o \
		 parse.o opcodes.o
  
all : $(main_file)

$(main_file) : $(LIBOBJS0)
	gcc -o $(main_file) $(LIBOBJS0) $(CFLAGS)
  
# Header files used by all library source files.
#
HDR = \
   $(TOP)/src/btree.h \
   $(TOP)/src/btreeInt.h \
   $(TOP)/src/hash.h \
   $(TOP)/src/hwtime.h \
   $(TOP)/src/keywordhash.h \
   $(TOP)/src/msvc.h \
   $(TOP)/src/mutex.h \
   $(TOP)/src/opcodes.h \
   $(TOP)/src/os.h \
   $(TOP)/src/os_common.h \
   $(TOP)/src/os_setup.h \
   $(TOP)/src/os_win.h \
   $(TOP)/src/pager.h \
   $(TOP)/src/pcache.h \
   $(TOP)/src/parse.h  \
   $(TOP)/src/pragma.h \
   $(TOP)/src/sqlite3.h  \
   $(TOP)/src/sqlite3ext.h \
   $(TOP)/src/sqliteInt.h  \
   $(TOP)/src/sqliteLimit.h \
   $(TOP)/src/vdbe.h \
   $(TOP)/src/vdbeInt.h \
   $(TOP)/src/vxworks.h \
   $(TOP)/src/whereInt.h \
   $(TOP)/src/config.h

# Rules to build individual *.o files from files in the src directory.
#
$(main_file).o:	$(main_file).c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(main_file).c

alter.o:	$(TOP)/src/alter.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/alter.c

analyze.o:	$(TOP)/src/analyze.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/analyze.c

attach.o:	$(TOP)/src/attach.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/attach.c

auth.o:	$(TOP)/src/auth.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/auth.c

backup.o:	$(TOP)/src/backup.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/backup.c

bitvec.o:	$(TOP)/src/bitvec.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/bitvec.c

btmutex.o:	$(TOP)/src/btmutex.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/btmutex.c

btree.o:	$(TOP)/src/btree.c $(HDR) $(TOP)/src/pager.h
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/btree.c

build.o:	$(TOP)/src/build.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/build.c

callback.o:	$(TOP)/src/callback.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/callback.c

complete.o:	$(TOP)/src/complete.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/complete.c

ctime.o:	$(TOP)/src/ctime.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/ctime.c

date.o:	$(TOP)/src/date.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/date.c

dbpage.o:	$(TOP)/src/dbpage.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/dbpage.c

dbstat.o:	$(TOP)/src/dbstat.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/dbstat.c

delete.o:	$(TOP)/src/delete.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/delete.c

expr.o:	$(TOP)/src/expr.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/expr.c

fault.o:	$(TOP)/src/fault.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/fault.c

fkey.o:	$(TOP)/src/fkey.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/fkey.c

func.o:	$(TOP)/src/func.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/func.c

global.o:	$(TOP)/src/global.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/global.c

hash.o:	$(TOP)/src/hash.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/hash.c

insert.o:	$(TOP)/src/insert.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/insert.c

legacy.o:	$(TOP)/src/legacy.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/legacy.c

loadext.o:	$(TOP)/src/loadext.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/loadext.c

main.o:	$(TOP)/src/main.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/main.c

malloc.o:	$(TOP)/src/malloc.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/malloc.c

mem0.o:	$(TOP)/src/mem0.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mem0.c

mem1.o:	$(TOP)/src/mem1.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mem1.c

mem2.o:	$(TOP)/src/mem2.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mem2.c

mem3.o:	$(TOP)/src/mem3.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mem3.c

mem5.o:	$(TOP)/src/mem5.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mem5.c

memdb.o:	$(TOP)/src/memdb.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/memdb.c

memjournal.o:	$(TOP)/src/memjournal.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/memjournal.c

mutex.o:	$(TOP)/src/mutex.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mutex.c

mutex_noop.o:	$(TOP)/src/mutex_noop.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mutex_noop.c

mutex_unix.o:	$(TOP)/src/mutex_unix.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mutex_unix.c

mutex_w32.o:	$(TOP)/src/mutex_w32.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/mutex_w32.c

notify.o:	$(TOP)/src/notify.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/notify.c

pager.o:	$(TOP)/src/pager.c $(HDR) $(TOP)/src/pager.h
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/pager.c

pcache.o:	$(TOP)/src/pcache.c $(HDR) $(TOP)/src/pcache.h
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/pcache.c

pcache1.o:	$(TOP)/src/pcache1.c $(HDR) $(TOP)/src/pcache.h
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/pcache1.c

os.o:	$(TOP)/src/os.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/os.c

os_unix.o:	$(TOP)/src/os_unix.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/os_unix.c

os_win.o:	$(TOP)/src/os_win.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/os_win.c

pragma.o:	$(TOP)/src/pragma.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/pragma.c

prepare.o:	$(TOP)/src/prepare.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/prepare.c

printf.o:	$(TOP)/src/printf.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/printf.c

random.o:	$(TOP)/src/random.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/random.c

resolve.o:	$(TOP)/src/resolve.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/resolve.c

rowset.o:	$(TOP)/src/rowset.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/rowset.c

select.o:	$(TOP)/src/select.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/select.c

status.o:	$(TOP)/src/status.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/status.c

table.o:	$(TOP)/src/table.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/table.c

threads.o:	$(TOP)/src/threads.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/threads.c

tokenize.o:	$(TOP)/src/tokenize.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/tokenize.c

treeview.o:	$(TOP)/src/treeview.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/treeview.c

trigger.o:	$(TOP)/src/trigger.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/trigger.c

update.o:	$(TOP)/src/update.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/update.c

upsert.o:	$(TOP)/src/upsert.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/upsert.c

utf.o:	$(TOP)/src/utf.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/utf.c

util.o:	$(TOP)/src/util.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/util.c

vacuum.o:	$(TOP)/src/vacuum.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vacuum.c

vdbe.o:	$(TOP)/src/vdbe.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vdbe.c

vdbeapi.o:	$(TOP)/src/vdbeapi.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vdbeapi.c

vdbeaux.o:	$(TOP)/src/vdbeaux.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vdbeaux.c

vdbeblob.o:	$(TOP)/src/vdbeblob.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vdbeblob.c

vdbemem.o:	$(TOP)/src/vdbemem.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vdbemem.c

vdbesort.o:	$(TOP)/src/vdbesort.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vdbesort.c

vdbetrace.o:	$(TOP)/src/vdbetrace.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vdbetrace.c

vtab.o:	$(TOP)/src/vtab.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/vtab.c

wal.o:	$(TOP)/src/wal.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/wal.c

walker.o:	$(TOP)/src/walker.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/walker.c

where.o:	$(TOP)/src/where.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/where.c

wherecode.o:	$(TOP)/src/wherecode.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/wherecode.c

whereexpr.o:	$(TOP)/src/whereexpr.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/whereexpr.c

window.o:	$(TOP)/src/window.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/window.c

tclsqlite.o:	$(TOP)/src/tclsqlite.c $(HDR)
	$(LTCOMPILE) -DUSE_TCL_STUBS=1 -c $(TOP)/src/tclsqlite.c

tclsqlite-shell.o:	$(TOP)/src/tclsqlite.c $(HDR)
	$(LTCOMPILE) -DTCLSH -o $@ -c $(TOP)/src/tclsqlite.c

tclsqlite-stubs.o:	$(TOP)/src/tclsqlite.c $(HDR)
	$(LTCOMPILE) -DUSE_TCL_STUBS=1 -o $@ -c $(TOP)/src/tclsqlite.c

parse.o:	$(TOP)/src/parse.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/parse.c

opcodes.o:	$(TOP)/src/opcodes.c $(HDR)
	$(LTCOMPILE) $(TEMP_STORE) -c $(TOP)/src/opcodes.c

.PHONY : clean
clean :
	-rm *.o
