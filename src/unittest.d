public import core.atomic;
public import core.bitop;
public import core.exception;
public import core.memory;
public import core.runtime;
public import core.thread;
public import core.vararg;

public import core.sync.condition;
public import core.sync.mutex;
public import core.sync.rwmutex;
public import core.sync.semaphore;


void main()
{
    // Bring in unit test for module by referencing a function in it
    shared(int) i;
    cas( &i, i.init, i.init + 1 ); // atomic
    bsf( 0 ); // bitop
    setAssertHandler( null ); // exception
    GC.enable(); // memory
    Runtime.collectHandler = null; // runtime
    static void fn() {}
    new Thread( &fn ); // thread
    va_end( null ); // vararg

    auto m = new Mutex; // mutex
    auto c = new Condition( m ); // condition
    auto r = new ReadWriteMutex; // rwmutex
    auto s = new Semaphore; // semaphore
}
