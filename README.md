# IsDebuggerPresent

Getting Being Debugged flag from peb in assembly.
```c++
typedef struct _PEB
{
    BOOLEAN InheritedAddressSpace;
    BOOLEAN ReadImageFileExecOptions;
    BOOLEAN BeingDebugged; 
}
```
