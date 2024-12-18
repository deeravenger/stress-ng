# stress-ng
A docker image for stress-ng

## Help

```
stress-ng, version 0.05.23

Usage: stress-ng [OPTION [ARG]]

General control options:
      --aggressive         enable all aggressive options
-a N, --all N              start N workers of each stress test
-b N, --backoff N          wait of N microseconds before work starts
      --class name         specify a class of stressors, use with --sequential
-n,   --dry-run            do not run
-h,   --help               show help
      --ignite-cpu         alter kernel controls to make CPU run hot
-k,   --keep-name          keep stress worker names to be 'stress-ng'
      --log-brief          less verbose log messages
      --log-file filename  log messages to a log file
      --maximize           enable maximum stress options
-M,   --metrics            print pseudo metrics of activity
      --metrics-brief      enable metrics and only show non-zero results
      --minimize           enable minimal stress options
      --no-madvise         don't use random madvise options for each mmap
      --page-in            touch allocated pages that are not in core
      --pathological       enable stressors that are known to hang a machine
      --perf               display perf statistics
-q,   --quiet              quiet output
-r,   --random N           start N random workers
      --sched type         set scheduler type
      --sched-prio N       set scheduler priority level N
      --sequential N       run all stressors one by one, invoking N of them
      --syslog             log messages to the syslog
      --temp-path          specify path for temporary directories and files
-t N, --timeout N          timeout after N seconds
      --timer-slack        enable timer slack mode
      --times              show run time summary at end of the run
      --tz                 collect temperatures from thermal zones (Linux only)
-v,   --verbose            verbose output
      --verify             verify results (not available on all tests)
-V,   --version            show version
-Y,   --yaml               output results to YAML formatted filed
-x,   --exclude            list of stressors to exclude (not run)

Stressor specific options:
      --affinity N         start N workers that rapidly change CPU affinity
      --affinity-ops N     stop after N affinity bogo operations
      --affinity-rand      change affinity randomly rather than sequentially
      --af-alg N           start N workers that stress AF_ALG socket domain
      --af-alg-ops N       stop after N af-alg bogo operations
      --aio N              start N workers that issue async I/O requests
      --aio-ops N          stop after N bogo async I/O requests
      --aio-requests N     number of async I/O requests per worker
      --aiol N             start N workers that issue async I/O requests via Linux aio
      --aiol-ops N         stop after N bogo Linux aio async I/O requests
      --aiol-requests N    number of Linux aio async I/O requests per worker
      --apparmor           start N workers exercising AppArmor interfaces
      --apparmor-ops       stop after N bogo AppArmor worker bogo operations
-B N, --bigheap N          start N workers that grow the heap using calloc()
      --bigheap-ops N      stop after N bogo bigheap operations
      --bigheap-growth N   grow heap by N bytes per iteration
      --bind-mount N       start N workers exercising bind mounts
      --bind-mount-ops N   stop after N bogo bind mount operations
      --brk N              start N workers performing rapid brk calls
      --brk-ops N          stop after N brk bogo operations
      --brk-notouch        don't touch (page in) new data segment page
      --bsearch N          start N workers that exercise a binary search
      --bsearch-ops N      stop after N binary search bogo operations
      --bsearch-size N     number of 32 bit integers to bsearch
-C N, --cache N            start N CPU cache thrashing workers
      --cache-ops N        stop after N cache bogo operations
      --cache-prefetch     prefetch on memory reads/writes
      --cache-flush        flush cache after every memory write (x86 only)
      --cache-fence        serialize stores (x86 only)
      --cache-level N      only exercise specified cache
      --cache-ways N       only fill specified number of cache ways
      --chdir N            start N workers thrashing chdir on many paths
      --chdir-ops N        stop chdir workers after N bogo chdir operations
      --chmod N            start N workers thrashing chmod file mode bits
      --chmod-ops N        stop chmod workers after N bogo operations
      --clock N            start N workers thrashing clocks and POSIX timers
      --clock-ops N        stop clock workers after N bogo operations
      --clone N            start N workers that rapidly create and reap clones
      --clone-ops N        stop after N bogo clone operations
      --clone-max N        set upper limit of N clones per worker
      --context N          start N workers exercising user context
      --context-ops N      stop context workers after N bogo operations
-c N, --cpu N              start N workers spinning on sqrt(rand())
      --cpu-ops N          stop after N cpu bogo operations
-l P, --cpu-load P         load CPU by P %%, 0=sleep, 100=full load (see -c)
      --cpu-load-slice S   specify time slice during busy load
      --cpu-method m       specify stress cpu method m, default is all
      --cpu-online N       start N workers offlining/onlining the CPUs
      --cpu-online-ops N   stop after N offline/online operations
      --crypt N            start N workers performing password encryption
      --crypt-ops N        stop after N bogo crypt operations
      --daemon N           start N workers creating multiple daemons
      --daemon-ops N       stop when N daemons have been created
-D N, --dentry N           start N dentry thrashing stressors
      --dentry-ops N       stop after N dentry bogo operations
      --dentry-order O     specify dentry unlink order (reverse, forward, stride)
      --dentries N         create N dentries per iteration
      --dir N              start N directory thrashing stressors
      --dir-ops N          stop after N directory bogo operations
      --dup N              start N workers exercising dup/close
      --dup-ops N          stop after N dup/close bogo operations
      --epoll N            start N workers doing epoll handled socket activity
      --epoll-ops N        stop after N epoll bogo operations
      --epoll-port P       use socket ports P upwards
      --epoll-domain D     specify socket domain, default is unix
      --eventfd N          start N workers stressing eventfd read/writes
      --eventfd-ops N      stop eventfd workers after N bogo operations
      --exec N             start N workers spinning on fork() and exec()
      --exec-ops N         stop after N exec bogo operations
      --exec-max P         create P workers per iteration, default is 1
      --fallocate N        start N workers fallocating 16MB files
      --fallocate-ops N    stop after N fallocate bogo operations
      --fallocate-bytes N  specify size of file to allocate
      --fault N            start N workers producing page faults
      --fault-ops N        stop after N page fault bogo operations
      --fiemap N           start N workers exercising the FIEMAP ioctl
      --fiemap-ops N       stop after N FIEMAP ioctl bogo operations
      --fifo N             start N workers exercising fifo I/O
      --fifo-ops N         stop after N fifo bogo operations
      --fifo-readers N     number of fifo reader stessors to start
      --filename N         start N workers exercising filenames
      --filename-ops N     stop after N filename bogo operations
      --filename-opts opt  specify allowed filename options
      --fcntl N            start N workers exercising fcntl commands
      --fcntl-ops N        stop after N fcntl bogo operations
      --flock N            start N workers locking a single file
      --flock-ops N        stop after N flock bogo operations
-f N, --fork N             start N workers spinning on fork() and exit()
      --fork-ops N         stop after N fork bogo operations
      --fork-max P         create P workers per iteration, default is 1
      --fp-error N         start N workers exercising floating point errors
      --fp-error-ops N     stop after N fp-error bogo operations
      --fstat N            start N workers exercising fstat on files
      --fstat-ops N        stop after N fstat bogo operations
      --fstat-dir path     fstat files in the specified directory
      --futex N            start N workers exercising a fast mutex
      --futex-ops N        stop after N fast mutex bogo operations
      --get N              start N workers exercising the get*() system calls
      --get-ops N          stop after N get bogo operations
      --getdent N          start N workers reading directories using getdents
      --getdent-ops N      stop after N getdents bogo operations
      --getrandom N        start N workers fetching random data via getrandom()
      --getrandom-ops N    stop after N getrandom bogo operations
      --handle N           start N workers exercising name_to_handle_at
      --handle-ops N       stop after N handle bogo operations
-d N, --hdd N              start N workers spinning on write()/unlink()
      --hdd-ops N          stop after N hdd bogo operations
      --hdd-bytes N        write N bytes per hdd worker (default is 1GB)
      --hdd-opts list      specify list of various stressor options
      --hdd-write-size N   set the default write size to N bytes
      --heapsort N         start N workers heap sorting 32 bit random integers
      --heapsort-ops N     stop after N heap sort bogo operations
      --heapsort-size N    number of 32 bit integers to sort
      --hsearch N          start N workers that exercise a hash table search
      --hsearch-ops N      stop afer N hash search bogo operations
      --hsearch-size N     number of integers to insert into hash table
      --icache N           start N CPU instruction cache thrashing workers
      --icache-ops N       stop after N icache bogo operations
      --inotify N          start N workers exercising inotify events
      --inotify-ops N      stop inotify workers after N bogo operations
-i N, --io N               start N workers spinning on sync()
      --io-ops N           stop after N io bogo operations
      --ionice-class C     specify ionice class (idle, besteffort, realtime)
      --ionice-level L     specify ionice level (0 max, 7 min)
      --itimer N           start N workers exercising interval timers
      --itimer-ops N       stop after N interval timer bogo operations
      --kcmp N             start N workers exercising kcmp
      --kcmp-ops N         stop after N kcmp bogo operations
      --key N              start N workers exercising key operations
      --key-ops N          stop after N key bogo operations
      --kill N             start N workers killing with SIGUSR1
      --kill-ops N         stop after N kill bogo operations
      --klog N             start N workers exercising kernel syslog interface
      --klog -ops N        stop after N klog bogo operations
      --lease N            start N workers holding and breaking a lease
      --lease-ops N        stop after N lease bogo operations
      --lease-breakers N   number of lease breaking workers to start
      --link N             start N workers creating hard links
      --link-ops N         stop after N link bogo operations
      --lockbus N          start N workers locking a memory increment
      --lockbus-ops N      stop after N lockbus bogo operations
      --lockf N            start N workers locking a single file via lockf
      --lockf-ops N        stop after N lockf bogo operations
      --lockf-nonblock     don't block if lock cannot be obtained, re-try
      --longjmp N          start N workers exercising setjmp/longjmp
      --longjmp-ops N      stop after N longjmp bogo operations
      --lsearch N          start N workers that exercise a linear search
      --lsearch-ops N      stop after N linear search bogo operations
      --lsearch-size N     number of 32 bit integers to lsearch
      --malloc N           start N workers exercising malloc/realloc/free
      --malloc-bytes N     allocate up to N bytes per allocation
      --malloc-max N       keep up to N allocations at a time
      --malloc-ops N       stop after N malloc bogo operations
      --malloc-thresh N    threshold where malloc uses mmap instead of sbrk
      --matrix N           start N workers exercising matrix operations
      --matrix-ops N       stop after N maxtrix bogo operations
      --matrix-method m    specify matrix stress method m, default is all
      --matrix-size N      specify the size of the N x N matrix
      --membarrier N       start N workers performing membarrier system calls
      --membarrier-ops N   stop after N membarrier bogo operations
      --memcpy N           start N workers performing memory copies
      --memcpy-ops N       stop after N memcpy bogo operations
      --memfd N            start N workers allocating memory with memfd_create
      --memfd-ops N        stop after N memfd bogo operations
      --mergesort N        start N workers merge sorting 32 bit random integers
      --mergesort-ops N    stop after N merge sort bogo operations
      --mergesort-size N   number of 32 bit integers to sort
      --mincore N          start N workers exercising mincore
      --mincore-ops N      stop after N mincore bogo operations
      --mincore-random     randomly select pages rather than linear scan
      --mknod N            start N workers that exercise mknod
      --mknod-ops N        stop after N mknod bogo operations
      --mlock N            start N workers exercising mlock/munlock
      --mlock-ops N        stop after N mlock bogo operations
      --mmap N             start N workers stressing mmap and munmap
      --mmap-ops N         stop after N mmap bogo operations
      --mmap-async         using asynchronous msyncs for file based mmap
      --mmap-bytes N       mmap and munmap N bytes for each stress iteration
      --mmap-file          mmap onto a file using synchronous msyncs
      --mmap-mprotect      enable mmap mprotect stressing
      --mmapfork N         start N workers stressing many forked mmaps/munmaps
      --mmapfork-ops N     stop after N mmapfork bogo operations
      --mmapmany N         start N workers stressing many mmaps and munmaps
      --mmapmany-ops N     stop after N mmapmany bogo operations
      --mremap N           start N workers stressing mremap
      --mremap-ops N       stop after N mremap bogo operations
      --mremap-bytes N     mremap N bytes maximum for each stress iteration
      --msg N              start N workers stressing System V messages
      --msg-ops N          stop msg workers after N bogo messages
      --mq N               start N workers passing messages using POSIX messages
      --mq-ops N           stop mq workers after N bogo messages
      --mq-size N          specify the size of the POSIX message queue
      --nice N             start N workers that randomly re-adjust nice levels
      --nice-ops N         stop after N nice bogo operations
      --null N             start N workers writing to /dev/null
      --null-ops N         stop after N /dev/null bogo write operations
      --numa N             start N workers stressing NUMA interfaces
      --numa-ops N         stop after N NUMA bogo operations
      --oom-pipe N         start N workers exercising large pipes
      --oom-pipe-ops N     stop after N oom-pipe bogo operations
-o,   --open N             start N workers exercising open/close
      --open-ops N         stop after N open/close bogo operations
      --personality N      start N workers that change their personality
      --personality-ops N  stop after N bogo personality calls
-p N, --pipe N             start N workers exercising pipe I/O
      --pipe-ops N         stop after N pipe I/O bogo operations
      --pipe-data-size N   set pipe size of each pipe write to N bytes
      --pipe-size N        set pipe size to N bytes
-P N, --poll N             start N workers exercising zero timeout polling
      --poll-ops N         stop after N poll bogo operations
      --procfs N           start N workers reading portions of /proc
      --procfs-ops N       stop procfs workers after N bogo read operations
      --pthread N          start N workers that create multiple threads
      --pthread-ops N      stop pthread workers after N bogo threads created
      --pthread-max P      create P threads at a time by each worker
      --ptrace N           start N workers that trace a child using ptrace
      --ptrace-ops N       stop ptrace workers after N system calls are traced
-Q,   --qsort N            start N workers qsorting 32 bit random integers
      --qsort-ops N        stop after N qsort bogo operations
      --qsort-size N       number of 32 bit integers to sort
      --quota N            start N workers exercising quotactl commands
      --quota -ops N       stop after N quotactl bogo operations
      --rdrand N           start N workers exercising rdrand (x86 only)
      --rdrand-ops N       stop after N rdrand bogo operations
      --readahead N        start N workers exercising file readahead
      --readahead-bytes N  size of file to readahead on (default is 1GB)
      --readahead-ops N    stop after N readahead bogo operations
      --remap N            start N workers exercising page remappings
      --remap-ops N        stop after N remapping bogo operations
-R,   --rename N           start N workers exercising file renames
      --rename-ops N       stop after N rename bogo operations
      --rlimit N           start N workers that exceed rlimits
      --rlimit-ops N       stop after N rlimit bogo operations
      --seek N             start N workers performing random seek r/w IO
      --seek-ops N         stop after N seek bogo operations
      --seek-punch         punch random holes in file to stress extents
      --seek-size N        length of file to do random I/O upon
      --sem N              start N workers doing semaphore operations
      --sem-ops N          stop after N semaphore bogo operations
      --sem-procs N        number of processes to start per worker
      --sem-sysv N         start N workers doing System V semaphore operations
      --sem-sysv-ops N     stop after N System V sem bogo operations
      --sem-sysv-procs N   number of processes to start per worker
      --sendfile N         start N workers exercising sendfile
      --sendfile-ops N     stop after N bogo sendfile operations
      --sendfile-size N    size of data to be sent with sendfile
      --shm N              start N workers that exercise POSIX shared memory
      --shm-ops N          stop after N POSIX shared memory bogo operations
      --shm-bytes N        allocate and free N bytes of POSIX shared memory per loop
      --shm-segs N         allocate N POSIX shared memory segments per iteration
      --shm-sysv N         start N workers that exercise System V shared memory
      --shm-sysv-ops N     stop after N shared memory bogo operations
      --shm-sysv-bytes N   allocate and free N bytes of shared memory per loop
      --shm-sysv-segs N    allocate N shared memory segments per iteration
      --sigfd N            start N workers reading signals via signalfd reads
      --sigfd-ops N        stop after N bogo signalfd reads
      --sigfpe N           start N workers generating floating point math faults
      --sigfpe-ops N       stop after N bogo floating point math faults
      --sigpending N       start N workers exercising sigpending
      --sigpending-ops N   stop after N sigpending bogo operations
      --sigq N             start N workers sending sigqueue signals
      --sigq-ops N         stop after N siqqueue bogo operations
      --sigsegv N          start N workers generating segmentation faults
      --sigsegv-ops N      stop after N bogo segmentation faults
      --sigsuspend N       start N workers exercising sigsuspend
      --sigsuspend-ops N   stop after N bogo sigsuspend wakes
      --sleep N            start N workers performing various duration sleeps
      --sleep-ops N        stop after N bogo sleep operations
      --sleep-max P        create P threads at a time by each worker
-S N, --sock N             start N workers exercising socket I/O
      --sock-domain D      specify socket domain, default is ipv4
      --sock-nodelay       disable Nagle algorithm, send data immediately
      --sock-ops N         stop after N socket bogo operations
      --sock-opts option   socket options [send|sendmsg|sendmmsg]
      --sock-port P        use socket ports P to P + number of workers - 1
      --sockfd N           start N workers sending file descriptors over sockets
      --sockfd-ops N       stop after N sockfd bogo operations
      --sockpair N         start N workers exercising socket pair I/O activity
      --sockpair-ops N     stop after N socket pair bogo operations
      --spawn              start N workers spawning stress-ng using posix_spawn
      --spawn-ops N        stop after N spawn bogo operations
      --splice N           start N workers reading/writing using splice
      --splice-ops N       stop after N bogo splice operations
      --splice-bytes N     number of bytes to transfer per splice call
      --stack N            start N workers generating stack overflows
      --stack-ops N        stop after N bogo stack overflows
      --stack-fill         fill stack, touches all new pages
      --str N              start N workers exercising lib C string functions
      --str-method func    specify the string function to stress
      --str-ops N          stop after N bogo string operations
      --stream N           start N workers exercising memory bandwidth
      --stream-ops N       stop after N bogo stream operations
      --stream-l3-size N   specify the L3 cache size of the CPU
-s N, --switch N           start N workers doing rapid context switches
      --switch-ops N       stop after N context switch bogo operations
      --symlink N          start N workers creating symbolic links
      --symlink-ops N      stop after N symbolic link bogo operations
      --sync-file N        start N workers exercise sync_file_range
      --sync-file-ops N    stop after N sync_file_range bogo operations
      --sync-file-bytes N  size of file to be sync'd
      --sysinfo N          start N workers reading system information
      --sysinfo-ops N      stop after sysinfo bogo operations
      --sysfs N            start N workers reading files from /sys
      --sysfs-ops N        stop after sysfs bogo operations
      --tee N              start N workers exercising the tee system call
      --tee-ops N          stop after N tee bogo operations
-T N, --timer N            start N workers producing timer events
      --timer-ops N        stop after N timer bogo events
      --timer-freq F       run timer(s) at F Hz, range 1 to 1000000000
      --timer-rand         enable random timer frequency
      --timerfd N          start N workers producing timerfd events
      --timerfd-ops N      stop after N timerfd bogo events
      --timerfd-freq F     run timer(s) at F Hz, range 1 to 1000000000
      --timerfd-rand       enable random timerfd frequency
      --tsc N              start N workers reading the TSC (x86 only)
      --tsc-ops N          stop after N TSC bogo operations
      --tsearch N          start N workers that exercise a tree search
      --tsearch-ops N      stop after N tree search bogo operations
      --tsearch-size N     number of 32 bit integers to tsearch
      --udp N              start N workers performing UDP send/receives
      --udp-ops N          stop after N udp bogo operations
      --udp-domain D       specify domain, default is ipv4
      --udp-lite           use the UDP-Lite (RFC 3828) protocol
      --udp-port P         use ports P to P + number of workers - 1
      --udp-flood N        start N workers that performs a UDP flood attack
      --udp-flood-ops N    stop after N udp flood bogo operations
      --udp-flood-domain D specify domain, default is ipv4
      --unshare N          start N workers exercising resource unsharing
      --unshare-ops N      stop after N bogo unshare operations
-u N, --urandom N          start N workers reading /dev/urandom
      --urandom-ops N      stop after N urando
```