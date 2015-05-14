all: /home/builder/astonia3_server/server /home/builder/astonia3_server/runtime/generic/base.dll /home/builder/astonia3_server/runtime/generic/lostcon.dll \
/home/builder/astonia3_server/runtime/generic/merchant.dll /home/builder/astonia3_server/runtime/generic/simple_baddy.dll \
/home/builder/astonia3_server/zones/generic/weapons.itm /home/builder/astonia3_server/runtime/generic/bank.dll \
/home/builder/astonia3_server/zones/generic/armor.itm /home/builder/astonia3_server/chatserver /home/builder/astonia3_server/runtime/1/gwendylon.dll \
/home/builder/astonia3_server/runtime/2/area2.dll /home/builder/astonia3_server/runtime/3/area3.dll /home/builder/astonia3_server/runtime/generic/book.dll \
/home/builder/astonia3_server/runtime/generic/transport.dll /home/builder/astonia3_server/runtime/generic/clanmaster.dll \
/home/builder/astonia3_server/runtime/generic/pents.dll \
/home/builder/astonia3_server/runtime/generic/alchemy.dll \
/home/builder/astonia3_server/runtime/3/gatekeeper.dll /home/builder/astonia3_server/runtime/6/edemon.dll \
/home/builder/astonia3_server/runtime/3/military.dll /home/builder/astonia3_server/runtime/8/fdemon.dll \
/home/builder/astonia3_server/update_server /home/builder/astonia3_server/runtime/10/ice.dll /home/builder/astonia3_server/runtime/11/palace.dll \
/home/builder/astonia3_server/runtime/generic/mine.dll /home/builder/astonia3_server/runtime/3/arena.dll \
/home/builder/astonia3_server/runtime/13/dungeon.dll /home/builder/astonia3_server/runtime/14/random.dll \
/home/builder/astonia3_server/runtime/15/swamp.dll /home/builder/astonia3_server/runtime/generic/professor.dll \
/home/builder/astonia3_server/runtime/16/forest.dll /home/builder/astonia3_server/runtime/17/two.dll \
/home/builder/astonia3_server/runtime/18/bones.dll /home/builder/astonia3_server/runtime/19/nomad.dll \
/home/builder/astonia3_server/runtime/20/lq.dll /home/builder/astonia3_server/runtime/22/lab1.dll \
/home/builder/astonia3_server/runtime/22/lab2.dll /home/builder/astonia3_server/runtime/23/strategy.dll /home/builder/astonia3_server/runtime/22/lab3.dll \
/home/builder/astonia3_server/runtime/22/lab4.dll /home/builder/astonia3_server/runtime/22/lab5.dll \
/home/builder/astonia3_server/runtime/19/saltmine.dll /home/builder/astonia3_server/runtime/5/sewers.dll \
/home/builder/astonia3_server/runtime/generic/sidestory.dll /home/builder/astonia3_server/runtime/generic/warped.dll \
/home/builder/astonia3_server/runtime/1/shrike.dll /home/builder/astonia3_server/runtime/26/staffer.dll \
/home/builder/astonia3_server/runtime/29/staffer2.dll /home/builder/astonia3_server/runtime/28/staffer3.dll \
/home/builder/astonia3_server/runtime/31/warrmines.dll /home/builder/astonia3_server/runtime/36/caligar.dll \
/home/builder/astonia3_server/runtime/32/missions.dll /home/builder/astonia3_server/runtime/generic/clubmaster.dll \
/home/builder/astonia3_server/runtime/33/tunnel.dll /home/builder/astonia3_server/runtime/34/teufel.dll \
/home/builder/astonia3_server/runtime/37/arkhata.dll /home/builder/astonia3_server/create_account /home/builder/astonia3_server/create_character \


CC=gcc
DEBUG=-g
CFLAGS=-Wall -Wshadow -Wno-pointer-sign -O3 $(DEBUG) -fno-strict-aliasing -m32 -DSTAFF
LDFLAGS=-O $(DEBUG) -m32 -L/usr/lib/mysql
LDRFLAGS=-O $(DEBUG) -m32 -rdynamic -L/usr/lib/mysql
DDFLAGS=-O $(DEBUG) -m32 -fPIC -shared
DFLAGS=$(CFLAGS) -m32 -fPIC
DATE=`date +%y%m%d%H`

OBJS=/home/builder/astonia3_server/.obj/server.o /home/builder/astonia3_server/.obj/io.o /home/builder/astonia3_server/.obj/libload.o /home/builder/astonia3_server/.obj/tool.o /home/builder/astonia3_server/.obj/sleep.o \
/home/builder/astonia3_server/.obj/log.o /home/builder/astonia3_server/.obj/create.o /home/builder/astonia3_server/.obj/notify.o /home/builder/astonia3_server/.obj/skill.o /home/builder/astonia3_server/.obj/do.o \
/home/builder/astonia3_server/.obj/act.o /home/builder/astonia3_server/.obj/player.o /home/builder/astonia3_server/.obj/rdtsc.o /home/builder/astonia3_server/.obj/los.o /home/builder/astonia3_server/.obj/light.o \
/home/builder/astonia3_server/.obj/map.o /home/builder/astonia3_server/.obj/path.o /home/builder/astonia3_server/.obj/error.o /home/builder/astonia3_server/.obj/talk.o /home/builder/astonia3_server/.obj/drdata.o \
/home/builder/astonia3_server/.obj/death.o /home/builder/astonia3_server/.obj/database.o /home/builder/astonia3_server/.obj/see.o /home/builder/astonia3_server/.obj/drvlib.o /home/builder/astonia3_server/.obj/timer.o \
/home/builder/astonia3_server/.obj/expire.o /home/builder/astonia3_server/.obj/effect.o /home/builder/astonia3_server/.obj/command.o /home/builder/astonia3_server/.obj/date.o \
/home/builder/astonia3_server/.obj/container.o /home/builder/astonia3_server/.obj/store.o /home/builder/astonia3_server/.obj/mem.o /home/builder/astonia3_server/.obj/sector.o /home/builder/astonia3_server/.obj/chat.o \
/home/builder/astonia3_server/.obj/statistics.o /home/builder/astonia3_server/.obj/mail.o /home/builder/astonia3_server/.obj/player_driver.o /home/builder/astonia3_server/.obj/clan.o \
/home/builder/astonia3_server/.obj/lookup.o /home/builder/astonia3_server/.obj/area.o /home/builder/astonia3_server/.obj/task.o /home/builder/astonia3_server/.obj/punish.o /home/builder/astonia3_server/.obj/depot.o \
/home/builder/astonia3_server/.obj/prof.o /home/builder/astonia3_server/.obj/motd.o /home/builder/astonia3_server/.obj/ignore.o /home/builder/astonia3_server/.obj/tell.o /home/builder/astonia3_server/.obj/clanlog.o \
/home/builder/astonia3_server/.obj/respawn.o /home/builder/astonia3_server/.obj/poison.o /home/builder/astonia3_server/.obj/swear.o /home/builder/astonia3_server/.obj/lab.o \
/home/builder/astonia3_server/.obj/consistency.o /home/builder/astonia3_server/.obj/btrace.o /home/builder/astonia3_server/.obj/club.o /home/builder/astonia3_server/.obj/teufel_pk.o \
/home/builder/astonia3_server/.obj/questlog.o /home/builder/astonia3_server/.obj/badip.o


# ------- Server -----

/home/builder/astonia3_server/server:	$(OBJS)
	$(CC) $(LDRFLAGS) -o /home/builder/astonia3_server/server $(OBJS) -lmysqlclient -lm -lz -ldl -lpthread

/home/builder/astonia3_server/.obj/server.o:		server.c server.h client.h player.h io.h notify.h libload.h tool.h sleep.h log.h create.h direction.h act.h los.h path.h timer.h effect.h database.h map.h date.h container.h store.h mem.h sector.h chat.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/server.o -c server.c

/home/builder/astonia3_server/.obj/io.o:		io.c server.h client.h player.h log.h mem.h io.h
	$(CC) $(CFLAGS) -o $*.o -c $<

/home/builder/astonia3_server/.obj/libload.o:		libload.c server.h tool.h log.h notify.h player.h mem.h libload.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/libload.o -c libload.c

/home/builder/astonia3_server/.obj/tool.o:		tool.c server.h log.h talk.h direction.h create.h skill.h player.h tool.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/tool.o -c tool.c
	
/home/builder/astonia3_server/.obj/questlog.o:	questlog.c server.h log.h talk.h direction.h create.h skill.h player.h tool.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/questlog.o -c questlog.c

/home/builder/astonia3_server/.obj/depot.o:		depot.c server.h log.h talk.h direction.h create.h skill.h player.h depot.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/depot.o -c depot.c

/home/builder/astonia3_server/.obj/sleep.o:		sleep.c server.h log.h sleep.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/sleep.o -c sleep.c

/home/builder/astonia3_server/.obj/log.o:		log.c log.h server.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/log.o -c log.c

/home/builder/astonia3_server/.obj/create.o:		create.c server.h tool.h log.h skill.h light.h player.h direction.h timer.h mem.h notify.h libload.h sector.h create.h balance.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/create.o -c create.c

/home/builder/astonia3_server/.obj/notify.o:		notify.c server.h log.h see.h mem.h sector.h notify.h create.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/notify.o -c notify.c
	
/home/builder/astonia3_server/.obj/teufel_pk.o:	teufel_pk.c server.h log.h see.h mem.h sector.h notify.h create.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/teufel_pk.o -c teufel_pk.c

/home/builder/astonia3_server/.obj/skill.o:		skill.c server.h create.h database.h log.h skill.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/skill.o -c skill.c

/home/builder/astonia3_server/.obj/do.o:		do.c server.h tool.h direction.h act.h error.h create.h drvlib.h talk.h see.h container.h log.h notify.h libload.h database.h spell.h effect.h map.h do.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/do.o -c do.c

/home/builder/astonia3_server/.obj/act.o:		act.c server.h log.h direction.h notify.h libload.h light.h tool.h map.h death.h create.h effect.h timer.h talk.h drvlib.h database.h drdata.h do.h see.h spell.h container.h path.h sector.h act.h balance.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/act.o -c act.c	

/home/builder/astonia3_server/.obj/player.o:		player.c mail.h server.h do.h log.h io.h client.h map.h database.h create.h see.h notify.h player.h los.h effect.h talk.h drvlib.h direction.h drdata.h act.h command.h container.h date.h skill.h store.h libload.h death.h tool.h sector.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/player.o -c player.c

/home/builder/astonia3_server/.obj/player_driver.o:	player_driver.c server.h do.h log.h io.h client.h map.h database.h create.h see.h notify.h player_driver.h los.h effect.h talk.h drvlib.h direction.h drdata.h act.h command.h container.h date.h skill.h store.h libload.h death.h tool.h sector.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/player_driver.o -c player_driver.c

/home/builder/astonia3_server/.obj/rdtsc.o:		rdtsc.S
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/rdtsc.o -c rdtsc.S

/home/builder/astonia3_server/.obj/los.o:		los.c server.h log.h light.h mem.h sector.h los.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/los.o -c los.c

/home/builder/astonia3_server/.obj/consistency.o:		consistency.c server.h log.h light.h mem.h sector.h consistency.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/consistency.o -c consistency.c

/home/builder/astonia3_server/.obj/light.o:		light.c server.h log.h los.h sector.h light.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/light.o -c light.c

/home/builder/astonia3_server/.obj/map.o:		map.c server.h light.h log.h create.h expire.h effect.h drdata.h notify.h libload.h container.h sector.h map.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/map.o -c map.c

/home/builder/astonia3_server/.obj/path.o:		path.c server.h direction.h log.h mem.h path.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/path.o -c path.c

/home/builder/astonia3_server/.obj/prof.o:		prof.c server.h talk.h tool.h log.h mem.h prof.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/prof.o -c prof.c

/home/builder/astonia3_server/.obj/motd.o:		motd.c server.h talk.h tool.h log.h mem.h motd.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/motd.o -c motd.c

/home/builder/astonia3_server/.obj/error.o:		error.c error.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/error.o -c error.c

/home/builder/astonia3_server/.obj/talk.o:		talk.c server.h notify.h log.h player.h see.h path.h mem.h sector.h talk.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/talk.o -c talk.c

/home/builder/astonia3_server/.obj/drdata.o:		drdata.c server.h log.h mem.h drdata.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/drdata.o -c drdata.c

/home/builder/astonia3_server/.obj/death.o:		death.c server.h log.h timer.h map.h notify.h create.h drdata.h libload.h direction.h error.h act.h talk.h expire.h effect.h database.h tool.h container.h player.h sector.h death.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/death.o -c death.c

/home/builder/astonia3_server/.obj/database.o:	database.c server.h log.h create.h player.h sleep.h tool.h drdata.h drvlib.h timer.h direction.h map.h mem.h database.h misc_ppd.h badip.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/database.o -c database.c

/home/builder/astonia3_server/.obj/lookup.o:	lookup.c server.h lookup.h log.h create.h player.h sleep.h tool.h drdata.h drvlib.h timer.h direction.h map.h mem.h database.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/lookup.o -c lookup.c

/home/builder/astonia3_server/.obj/see.o:		see.c server.h los.h log.h date.h see.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/see.o -c see.c

/home/builder/astonia3_server/.obj/drvlib.o:		drvlib.c server.h drdata.h direction.h error.h notify.h path.h do.h see.h talk.h map.h container.h timer.h libload.h spell.h tool.h effect.h create.h drvlib.h sector.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/drvlib.o -c drvlib.c

/home/builder/astonia3_server/.obj/timer.o:		timer.c server.h log.h mem.h timer.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/timer.o -c timer.c

/home/builder/astonia3_server/.obj/expire.o:		expire.c server.h log.h timer.h map.h create.h container.h expire.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/expire.o -c expire.c

/home/builder/astonia3_server/.obj/effect.o:		effect.c server.h log.h notify.h death.h light.h tool.h spell.h los.h mem.h sector.h effect.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/effect.o -c effect.c

/home/builder/astonia3_server/.obj/command.o:		command.c server.h talk.h log.h tool.h skill.h database.h date.h do.h map.h command.h chat.h misc_ppd.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/command.o -c command.c

/home/builder/astonia3_server/.obj/date.o:		date.c server.h talk.h date.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/date.o -c date.c

/home/builder/astonia3_server/.obj/container.o:	container.c server.h log.h create.h mem.h container.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/container.o -c container.c

/home/builder/astonia3_server/.obj/store.o:	store.c server.h log.h error.h create.h tool.h talk.h mem.h store.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/store.o -c store.c

/home/builder/astonia3_server/.obj/mem.o:		mem.c log.h mem.h
	$(CC) $(CFLAGS) -DDEBUG -o /home/builder/astonia3_server/.obj/mem.o -c mem.c

/home/builder/astonia3_server/.obj/sector.o:		sector.c server.h mem.h log.h sector.h tool.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/sector.o -c sector.c

/home/builder/astonia3_server/.obj/chat.o:		chat.c chat.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/chat.o -c chat.c

/home/builder/astonia3_server/.obj/statistics.o:	statistics.c statistics.h server.h mem.h drdata.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/statistics.o -c statistics.c

/home/builder/astonia3_server/.obj/mail.o:		mail.c mail.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/mail.o -c mail.c

/home/builder/astonia3_server/.obj/clan.o:		clan.c server.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/clan.o -c clan.c

/home/builder/astonia3_server/.obj/club.o:		club.c server.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/club.o -c club.c

/home/builder/astonia3_server/.obj/area.o:		area.c area.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/area.o -c area.c

/home/builder/astonia3_server/.obj/task.o:		task.c task.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/task.o -c task.c

/home/builder/astonia3_server/.obj/punish.o:		punish.c punish.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/punish.o -c punish.c

/home/builder/astonia3_server/.obj/ignore.o:		ignore.c ignore.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/ignore.o -c ignore.c

/home/builder/astonia3_server/.obj/tell.o:		tell.c tell.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/tell.o -c tell.c

/home/builder/astonia3_server/.obj/clanlog.o:		clanlog.c clanlog.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/clanlog.o -c clanlog.c

/home/builder/astonia3_server/.obj/respawn.o:		respawn.c respawn.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/respawn.o -c respawn.c

/home/builder/astonia3_server/.obj/poison.o:		poison.c poison.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/poison.o -c poison.c

/home/builder/astonia3_server/.obj/swear.o:		swear.c swear.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/swear.o -c swear.c

/home/builder/astonia3_server/.obj/lab.o:		lab.c lab.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/lab.o -c lab.c

/home/builder/astonia3_server/.obj/btrace.o:		btrace.c btrace.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/btrace.o -c btrace.c
	
/home/builder/astonia3_server/.obj/badip.o:		badip.c badip.h log.h talk.h server.h mem.h
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/badip.o -c badip.c

# ------- DLLs -------

/home/builder/astonia3_server/runtime/generic/base.dll:	/home/builder/astonia3_server/.obj/base.o
	$(CC) $(DDFLAGS) -o base.tmp /home/builder/astonia3_server/.obj/base.o
	mv base.tmp /home/builder/astonia3_server/runtime/generic/base.dll

/home/builder/astonia3_server/.obj/base.o:		base.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/base.o -c base.c

/home/builder/astonia3_server/runtime/generic/sidestory.dll:	/home/builder/astonia3_server/.obj/sidestory.o
	$(CC) $(DDFLAGS) -o sidestory.tmp /home/builder/astonia3_server/.obj/sidestory.o
	mv sidestory.tmp /home/builder/astonia3_server/runtime/generic/sidestory.dll

/home/builder/astonia3_server/.obj/sidestory.o:		sidestory.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/sidestory.o -c sidestory.c

/home/builder/astonia3_server/runtime/generic/pents.dll:	/home/builder/astonia3_server/.obj/pents.o
	$(CC) $(DDFLAGS) -o pents.tmp /home/builder/astonia3_server/.obj/pents.o
	mv pents.tmp /home/builder/astonia3_server/runtime/generic/pents.dll

/home/builder/astonia3_server/.obj/pents.o:		pents.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/pents.o -c pents.c

/home/builder/astonia3_server/runtime/generic/professor.dll:	/home/builder/astonia3_server/.obj/professor.o
	$(CC) $(DDFLAGS) -o professor.tmp /home/builder/astonia3_server/.obj/professor.o
	mv professor.tmp /home/builder/astonia3_server/runtime/generic/professor.dll

/home/builder/astonia3_server/.obj/professor.o:		professor.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/professor.o -c professor.c

/home/builder/astonia3_server/runtime/generic/bank.dll:	/home/builder/astonia3_server/.obj/bank.o
	$(CC) $(DDFLAGS) -o bank.tmp /home/builder/astonia3_server/.obj/bank.o
	mv bank.tmp /home/builder/astonia3_server/runtime/generic/bank.dll

/home/builder/astonia3_server/.obj/bank.o:		bank.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/bank.o -c bank.c

/home/builder/astonia3_server/runtime/generic/alchemy.dll:	/home/builder/astonia3_server/.obj/alchemy.o
	$(CC) $(DDFLAGS) -o alchemy.tmp /home/builder/astonia3_server/.obj/alchemy.o
	mv alchemy.tmp /home/builder/astonia3_server/runtime/generic/alchemy.dll

/home/builder/astonia3_server/.obj/alchemy.o:		alchemy.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/alchemy.o -c alchemy.c

/home/builder/astonia3_server/runtime/generic/book.dll:	/home/builder/astonia3_server/.obj/book.o
	$(CC) $(DDFLAGS) -o book.tmp /home/builder/astonia3_server/.obj/book.o
	mv book.tmp /home/builder/astonia3_server/runtime/generic/book.dll

/home/builder/astonia3_server/.obj/book.o:		book.c server.h book.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/book.o -c book.c

/home/builder/astonia3_server/runtime/generic/transport.dll:	/home/builder/astonia3_server/.obj/transport.o
	$(CC) $(DDFLAGS) -o transport.tmp /home/builder/astonia3_server/.obj/transport.o
	mv transport.tmp /home/builder/astonia3_server/runtime/generic/transport.dll

/home/builder/astonia3_server/.obj/transport.o:		transport.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/transport.o -c transport.c

/home/builder/astonia3_server/runtime/generic/clanmaster.dll:	/home/builder/astonia3_server/.obj/clanmaster.o
	$(CC) $(DDFLAGS) -o clanmaster.tmp /home/builder/astonia3_server/.obj/clanmaster.o
	mv clanmaster.tmp /home/builder/astonia3_server/runtime/generic/clanmaster.dll

/home/builder/astonia3_server/.obj/clanmaster.o:		clanmaster.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/clanmaster.o -c clanmaster.c

/home/builder/astonia3_server/runtime/generic/clubmaster.dll:	/home/builder/astonia3_server/.obj/clubmaster.o
	$(CC) $(DDFLAGS) -o clubmaster.tmp /home/builder/astonia3_server/.obj/clubmaster.o
	mv clubmaster.tmp /home/builder/astonia3_server/runtime/generic/clubmaster.dll

/home/builder/astonia3_server/.obj/clubmaster.o:		clubmaster.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h map.h create.h container.h tool.h spell.h effect.h light.h los.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/clubmaster.o -c clubmaster.c

/home/builder/astonia3_server/runtime/generic/lostcon.dll:	/home/builder/astonia3_server/.obj/lostcon.o
	$(CC) $(DDFLAGS) -o lostcon.tmp /home/builder/astonia3_server/.obj/lostcon.o
	mv lostcon.tmp /home/builder/astonia3_server/runtime/generic/lostcon.dll

/home/builder/astonia3_server/.obj/lostcon.o:		lostcon.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h player.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/lostcon.o -c lostcon.c

/home/builder/astonia3_server/runtime/generic/merchant.dll:	/home/builder/astonia3_server/.obj/merchant.o
	$(CC) $(DDFLAGS) -o merchant.tmp /home/builder/astonia3_server/.obj/merchant.o
	mv merchant.tmp /home/builder/astonia3_server/runtime/generic/merchant.dll

/home/builder/astonia3_server/.obj/merchant.o:	merchant.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/merchant.o -c merchant.c

/home/builder/astonia3_server/runtime/generic/simple_baddy.dll:	/home/builder/astonia3_server/.obj/simple_baddy.o
	$(CC) $(DDFLAGS) -o simple_baddy.tmp /home/builder/astonia3_server/.obj/simple_baddy.o
	mv simple_baddy.tmp /home/builder/astonia3_server/runtime/generic/simple_baddy.dll

/home/builder/astonia3_server/.obj/simple_baddy.o:		simple_baddy.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/simple_baddy.o -c simple_baddy.c

/home/builder/astonia3_server/runtime/1/gwendylon.dll:	/home/builder/astonia3_server/.obj/gwendylon.o
	$(CC) $(DDFLAGS) -o gwendylon.tmp /home/builder/astonia3_server/.obj/gwendylon.o
	mv gwendylon.tmp /home/builder/astonia3_server/runtime/1/gwendylon.dll

/home/builder/astonia3_server/.obj/gwendylon.o:	gwendylon.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/gwendylon.o -c gwendylon.c

/home/builder/astonia3_server/runtime/1/shrike.dll:	/home/builder/astonia3_server/.obj/shrike.o
	$(CC) $(DDFLAGS) -o shrike.tmp /home/builder/astonia3_server/.obj/shrike.o
	mv shrike.tmp /home/builder/astonia3_server/runtime/1/shrike.dll

/home/builder/astonia3_server/.obj/shrike.o:	shrike.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/shrike.o -c shrike.c

/home/builder/astonia3_server/runtime/2/area2.dll:	/home/builder/astonia3_server/.obj/area2.o
	$(CC) $(DDFLAGS) -o area2.tmp /home/builder/astonia3_server/.obj/area2.o
	mv area2.tmp /home/builder/astonia3_server/runtime/2/area2.dll

/home/builder/astonia3_server/.obj/area2.o:	area2.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/area2.o -c area2.c

/home/builder/astonia3_server/runtime/3/area3.dll:	/home/builder/astonia3_server/.obj/area3.o
	$(CC) $(DDFLAGS) -o area3.tmp /home/builder/astonia3_server/.obj/area3.o
	mv area3.tmp /home/builder/astonia3_server/runtime/3/area3.dll

/home/builder/astonia3_server/.obj/area3.o:	area3.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/area3.o -c area3.c
	
/home/builder/astonia3_server/runtime/37/arkhata.dll:	/home/builder/astonia3_server/.obj/arkhata.o
	$(CC) $(DDFLAGS) -o arkhata.tmp /home/builder/astonia3_server/.obj/arkhata.o
	mv arkhata.tmp /home/builder/astonia3_server/runtime/37/arkhata.dll

/home/builder/astonia3_server/.obj/arkhata.o:	arkhata.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/arkhata.o -c arkhata.c

/home/builder/astonia3_server/runtime/22/lab2.dll:	/home/builder/astonia3_server/.obj/lab2.o
	$(CC) $(DDFLAGS) -o lab2.tmp /home/builder/astonia3_server/.obj/lab2.o
	mv lab2.tmp /home/builder/astonia3_server/runtime/22/lab2.dll

/home/builder/astonia3_server/.obj/lab2.o:	lab2.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/lab2.o -c lab2.c

/home/builder/astonia3_server/runtime/22/lab3.dll:	/home/builder/astonia3_server/.obj/lab3.o
	$(CC) $(DDFLAGS) -o lab3.tmp /home/builder/astonia3_server/.obj/lab3.o
	mv lab3.tmp /home/builder/astonia3_server/runtime/22/lab3.dll

/home/builder/astonia3_server/.obj/lab3.o:	lab3.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/lab3.o -c lab3.c

/home/builder/astonia3_server/runtime/22/lab4.dll:	/home/builder/astonia3_server/.obj/lab4.o
	$(CC) $(DDFLAGS) -o lab4.tmp /home/builder/astonia3_server/.obj/lab4.o
	mv lab4.tmp /home/builder/astonia3_server/runtime/22/lab4.dll

/home/builder/astonia3_server/.obj/lab4.o:	lab4.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/lab4.o -c lab4.c

/home/builder/astonia3_server/runtime/22/lab5.dll:	/home/builder/astonia3_server/.obj/lab5.o
	$(CC) $(DDFLAGS) -o lab5.tmp /home/builder/astonia3_server/.obj/lab5.o
	mv lab5.tmp /home/builder/astonia3_server/runtime/22/lab5.dll

/home/builder/astonia3_server/.obj/lab5.o:	lab5.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/lab5.o -c lab5.c


/home/builder/astonia3_server/runtime/3/arena.dll:	/home/builder/astonia3_server/.obj/arena.o
	$(CC) $(DDFLAGS) -o arena.tmp /home/builder/astonia3_server/.obj/arena.o
	mv arena.tmp /home/builder/astonia3_server/runtime/3/arena.dll

/home/builder/astonia3_server/.obj/arena.o:	arena.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/arena.o -c arena.c

/home/builder/astonia3_server/runtime/3/gatekeeper.dll:	/home/builder/astonia3_server/.obj/gatekeeper.o
	$(CC) $(DDFLAGS) -o gatekeeper.tmp /home/builder/astonia3_server/.obj/gatekeeper.o
	mv gatekeeper.tmp /home/builder/astonia3_server/runtime/3/gatekeeper.dll

/home/builder/astonia3_server/.obj/gatekeeper.o:	gatekeeper.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/gatekeeper.o -c gatekeeper.c

/home/builder/astonia3_server/runtime/3/military.dll:	/home/builder/astonia3_server/.obj/military.o
	$(CC) $(DDFLAGS) -o military.tmp /home/builder/astonia3_server/.obj/military.o
	cp military.tmp military.tmp2
	mv military.tmp /home/builder/astonia3_server/runtime/3/military.dll
	mv military.tmp2 /home/builder/astonia3_server/runtime/29/military.dll

/home/builder/astonia3_server/.obj/military.o:	military.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/military.o -c military.c

/home/builder/astonia3_server/runtime/6/edemon.dll:	/home/builder/astonia3_server/.obj/edemon.o
	$(CC) $(DDFLAGS) -o edemon.tmp /home/builder/astonia3_server/.obj/edemon.o
	mv edemon.tmp /home/builder/astonia3_server/runtime/6/edemon.dll

/home/builder/astonia3_server/.obj/edemon.o:	edemon.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/edemon.o -c edemon.c

/home/builder/astonia3_server/runtime/5/sewers.dll:	/home/builder/astonia3_server/.obj/sewers.o
	$(CC) $(DDFLAGS) -o sewers.tmp /home/builder/astonia3_server/.obj/sewers.o
	mv sewers.tmp /home/builder/astonia3_server/runtime/5/sewers.dll

/home/builder/astonia3_server/.obj/sewers.o:	sewers.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/sewers.o -c sewers.c

/home/builder/astonia3_server/runtime/8/fdemon.dll:	/home/builder/astonia3_server/.obj/fdemon.o
	$(CC) $(DDFLAGS) -o fdemon.tmp /home/builder/astonia3_server/.obj/fdemon.o
	mv fdemon.tmp /home/builder/astonia3_server/runtime/8/fdemon.dll

/home/builder/astonia3_server/.obj/fdemon.o:	fdemon.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/fdemon.o -c fdemon.c

/home/builder/astonia3_server/runtime/10/ice.dll:	/home/builder/astonia3_server/.obj/ice.o
	$(CC) $(DDFLAGS) -o ice.tmp /home/builder/astonia3_server/.obj/ice.o
	mv ice.tmp /home/builder/astonia3_server/runtime/10/ice.dll

/home/builder/astonia3_server/.obj/ice.o:	ice.c ice_shared.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/ice.o -c ice.c

/home/builder/astonia3_server/runtime/11/palace.dll:	/home/builder/astonia3_server/.obj/palace.o
	$(CC) $(DDFLAGS) -o palace.tmp /home/builder/astonia3_server/.obj/palace.o
	mv palace.tmp /home/builder/astonia3_server/runtime/11/palace.dll

/home/builder/astonia3_server/.obj/palace.o:	palace.c ice_shared.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/palace.o -c palace.c

/home/builder/astonia3_server/runtime/13/dungeon.dll:	/home/builder/astonia3_server/.obj/dungeon.o
	$(CC) $(DDFLAGS) -o dungeon.tmp /home/builder/astonia3_server/.obj/dungeon.o
	mv dungeon.tmp /home/builder/astonia3_server/runtime/13/dungeon.dll

/home/builder/astonia3_server/.obj/dungeon.o:	dungeon.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/dungeon.o -c dungeon.c

/home/builder/astonia3_server/runtime/14/random.dll:	/home/builder/astonia3_server/.obj/random.o
	$(CC) $(DDFLAGS) -o random.tmp /home/builder/astonia3_server/.obj/random.o
	mv random.tmp /home/builder/astonia3_server/runtime/14/random.dll

/home/builder/astonia3_server/.obj/random.o:	random.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/random.o -c random.c

/home/builder/astonia3_server/runtime/15/swamp.dll:	/home/builder/astonia3_server/.obj/swamp.o
	$(CC) $(DDFLAGS) -o swamp.tmp /home/builder/astonia3_server/.obj/swamp.o
	mv swamp.tmp /home/builder/astonia3_server/runtime/15/swamp.dll

/home/builder/astonia3_server/.obj/swamp.o:	swamp.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/swamp.o -c swamp.c

/home/builder/astonia3_server/runtime/16/forest.dll:	/home/builder/astonia3_server/.obj/forest.o
	$(CC) $(DDFLAGS) -o forest.tmp /home/builder/astonia3_server/.obj/forest.o
	mv forest.tmp /home/builder/astonia3_server/runtime/16/forest.dll

/home/builder/astonia3_server/.obj/forest.o:	forest.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/forest.o -c forest.c

/home/builder/astonia3_server/runtime/17/two.dll:	/home/builder/astonia3_server/.obj/two.o
	$(CC) $(DDFLAGS) -o two.tmp /home/builder/astonia3_server/.obj/two.o
	mv two.tmp /home/builder/astonia3_server/runtime/17/two.dll

/home/builder/astonia3_server/.obj/two.o:	two.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/two.o -c two.c

/home/builder/astonia3_server/runtime/18/bones.dll:	/home/builder/astonia3_server/.obj/bones.o
	$(CC) $(DDFLAGS) -o bones.tmp /home/builder/astonia3_server/.obj/bones.o
	mv bones.tmp /home/builder/astonia3_server/runtime/18/bones.dll

/home/builder/astonia3_server/.obj/bones.o:	bones.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/bones.o -c bones.c

/home/builder/astonia3_server/runtime/19/nomad.dll:	/home/builder/astonia3_server/.obj/nomad.o
	$(CC) $(DDFLAGS) -o nomad.tmp /home/builder/astonia3_server/.obj/nomad.o
	mv nomad.tmp /home/builder/astonia3_server/runtime/19/nomad.dll

/home/builder/astonia3_server/.obj/nomad.o:	nomad.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/nomad.o -c nomad.c

/home/builder/astonia3_server/runtime/19/saltmine.dll:	/home/builder/astonia3_server/.obj/saltmine.o
	$(CC) $(DDFLAGS) -o saltmine.tmp /home/builder/astonia3_server/.obj/saltmine.o
	mv saltmine.tmp /home/builder/astonia3_server/runtime/19/saltmine.dll

/home/builder/astonia3_server/.obj/saltmine.o:	saltmine.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/saltmine.o -c saltmine.c

/home/builder/astonia3_server/runtime/26/staffer.dll:	/home/builder/astonia3_server/.obj/staffer.o
	$(CC) $(DDFLAGS) -o staffer.tmp /home/builder/astonia3_server/.obj/staffer.o
	mv staffer.tmp /home/builder/astonia3_server/runtime/26/staffer.dll

/home/builder/astonia3_server/.obj/staffer.o:	staffer.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/staffer.o -c staffer.c

/home/builder/astonia3_server/runtime/29/staffer2.dll:	/home/builder/astonia3_server/.obj/staffer2.o
	$(CC) $(DDFLAGS) -o staffer2.tmp /home/builder/astonia3_server/.obj/staffer2.o
	mv staffer2.tmp /home/builder/astonia3_server/runtime/29/staffer2.dll

/home/builder/astonia3_server/.obj/staffer2.o:	staffer2.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/staffer2.o -c staffer2.c

/home/builder/astonia3_server/runtime/28/staffer3.dll:	/home/builder/astonia3_server/.obj/staffer3.o
	$(CC) $(DDFLAGS) -o staffer3.tmp /home/builder/astonia3_server/.obj/staffer3.o
	mv staffer3.tmp /home/builder/astonia3_server/runtime/28/staffer3.dll

/home/builder/astonia3_server/.obj/staffer3.o:	staffer3.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/staffer3.o -c staffer3.c

/home/builder/astonia3_server/runtime/generic/warped.dll:	/home/builder/astonia3_server/.obj/warped.o
	$(CC) $(DDFLAGS) -o warped.tmp /home/builder/astonia3_server/.obj/warped.o
	mv warped.tmp /home/builder/astonia3_server/runtime/generic/warped.dll

/home/builder/astonia3_server/.obj/warped.o:	warped.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/warped.o -c warped.c

/home/builder/astonia3_server/runtime/20/lq.dll:	/home/builder/astonia3_server/.obj/lq.o
	$(CC) $(DDFLAGS) -o lq.tmp /home/builder/astonia3_server/.obj/lq.o
	cp lq.tmp lq.tmpx
	mv lq.tmpx /home/builder/astonia3_server/runtime/35/lq.dll
	mv lq.tmp /home/builder/astonia3_server/runtime/20/lq.dll

/home/builder/astonia3_server/.obj/lq.o:	lq.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/lq.o -c lq.c

/home/builder/astonia3_server/runtime/generic/mine.dll:	/home/builder/astonia3_server/.obj/mine.o
	$(CC) $(DDFLAGS) -o mine.tmp /home/builder/astonia3_server/.obj/mine.o
	mv mine.tmp /home/builder/astonia3_server/runtime/generic/mine.dll

/home/builder/astonia3_server/.obj/mine.o:	mine.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/mine.o -c mine.c

/home/builder/astonia3_server/runtime/22/lab1.dll:		/home/builder/astonia3_server/.obj/lab1.o
	$(CC) $(DDFLAGS) -o lab1.tmp /home/builder/astonia3_server/.obj/lab1.o
	mv lab1.tmp /home/builder/astonia3_server/runtime/22/lab1.dll

/home/builder/astonia3_server/.obj/lab1.o:	lab1.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/lab1.o -c lab1.c

/home/builder/astonia3_server/runtime/23/strategy.dll: 	/home/builder/astonia3_server/.obj/strategy.o
	$(CC) $(DDFLAGS) -o strategy.tmp /home/builder/astonia3_server/.obj/strategy.o
	cp strategy.tmp strategy2.tmp
	mv strategy.tmp /home/builder/astonia3_server/runtime/23/strategy.dll
	mv strategy2.tmp /home/builder/astonia3_server/runtime/24/strategy.dll

/home/builder/astonia3_server/.obj/strategy.o:	strategy.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/strategy.o -c strategy.c

/home/builder/astonia3_server/runtime/33/tunnel.dll: 	/home/builder/astonia3_server/.obj/tunnel.o
	$(CC) $(DDFLAGS) -o tunnel.tmp /home/builder/astonia3_server/.obj/tunnel.o
	mv tunnel.tmp /home/builder/astonia3_server/runtime/33/tunnel.dll

/home/builder/astonia3_server/.obj/tunnel.o:	tunnel.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/tunnel.o -c tunnel.c

/home/builder/astonia3_server/runtime/31/warrmines.dll: /home/builder/astonia3_server/.obj/warrmines.o
	$(CC) $(DDFLAGS) -o warrmines.tmp /home/builder/astonia3_server/.obj/warrmines.o
	mv warrmines.tmp /home/builder/astonia3_server/runtime/31/warrmines.dll

/home/builder/astonia3_server/.obj/warrmines.o:	warrmines.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/warrmines.o -c warrmines.c

/home/builder/astonia3_server/runtime/32/missions.dll: /home/builder/astonia3_server/.obj/missions.o
	$(CC) $(DDFLAGS) -o missions.tmp /home/builder/astonia3_server/.obj/missions.o
	mv missions.tmp /home/builder/astonia3_server/runtime/32/missions.dll

/home/builder/astonia3_server/.obj/missions.o:	missions.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h mission_ppd.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/missions.o -c missions.c
	
/home/builder/astonia3_server/runtime/34/teufel.dll: /home/builder/astonia3_server/.obj/teufel.o
	$(CC) $(DDFLAGS) -o teufel.tmp /home/builder/astonia3_server/.obj/teufel.o
	mv teufel.tmp /home/builder/astonia3_server/runtime/34/teufel.dll

/home/builder/astonia3_server/.obj/teufel.o:	teufel.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h mission_ppd.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/teufel.o -c teufel.c	
	
/home/builder/astonia3_server/runtime/36/caligar.dll: /home/builder/astonia3_server/.obj/caligar.o
	$(CC) $(DDFLAGS) -o caligar.tmp /home/builder/astonia3_server/.obj/caligar.o
	mv caligar.tmp /home/builder/astonia3_server/runtime/36/caligar.dll

/home/builder/astonia3_server/.obj/caligar.o:	caligar.c server.h log.h notify.h do.h direction.h path.h error.h drdata.h see.h drvlib.h death.h effect.h tool.h store.h area1.h
	$(CC) $(DFLAGS) -o /home/builder/astonia3_server/.obj/caligar.o -c caligar.c

/home/builder/astonia3_server/update_server:	/home/builder/astonia3_server/.obj/update_server.o
	$(CC) $(LDFLAGS) -lm -o update_server /home/builder/astonia3_server/.obj/update_server.o

/home/builder/astonia3_server/.obj/update_server.o:	update_server.c
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/update_server.o -c update_server.c

/home/builder/astonia3_server/zones/generic/weapons.itm:	/home/builder/astonia3_server/create_weapons
	/home/builder/astonia3_server/create_weapons >/home/builder/astonia3_server/zones/generic/weapons.itm

/home/builder/astonia3_server/create_weapons:	/home/builder/astonia3_server/.obj/create_weapons.o
	$(CC) $(LDFLAGS) -o /home/builder/astonia3_server/create_weapons /home/builder/astonia3_server/.obj/create_weapons.o

/home/builder/astonia3_server/.obj/create_weapons.o:	create_weapons.c
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/create_weapons.o -c create_weapons.c

/home/builder/astonia3_server/zones/generic/armor.itm:	/home/builder/astonia3_server/create_armor
	/home/builder/astonia3_server/create_armor >/home/builder/astonia3_server/zones/generic/armor.itm

/home/builder/astonia3_server/create_armor:		/home/builder/astonia3_server/.obj/create_armor.o
	$(CC) $(LDFLAGS) -o /home/builder/astonia3_server/create_armor /home/builder/astonia3_server/.obj/create_armor.o

/home/builder/astonia3_server/.obj/create_armor.o:	create_armor.c
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/create_armor.o -c create_armor.c

/home/builder/astonia3_server/chatserver:		/home/builder/astonia3_server/.obj/chatserver.o
	$(CC) $(LDFLAGS) -o /home/builder/astonia3_server/chatserver /home/builder/astonia3_server/.obj/chatserver.o

/home/builder/astonia3_server/.obj/chatserver.o:	chatserver.c
	$(CC) $(CFLAGS) -o /home/builder/astonia3_server/.obj/chatserver.o -c chatserver.c
	
/home/builder/astonia3_server/create_account:		create_account.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o /home/builder/astonia3_server/create_account create_account.c -lmysqlclient
	
/home/builder/astonia3_server/create_character:	create_character.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o /home/builder/astonia3_server/create_character create_character.c -lmysqlclient

/home/builder/astonia3_server/getid:	getid.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o /home/builder/astonia3_server/getid getid.c -lmysqlclient


# ------- Helper -----

clean:
	rm /home/builder/astonia3_server/server /home/builder/astonia3_server/.obj/*.o *~ /home/builder/astonia3_server/zones/*/*~ /home/builder/astonia3_server/runtime/*/* /home/builder/astonia3_server/chatserver /home/builder/astonia3_server/update_server /home/builder/astonia3_server/create_weapons /home/builder/astonia3_server/create_armor /home/builder/astonia3_server/create_account /home/builder/astonia3_server/create_character /home/builder/astonia3_server/getid 

	
