#include "Std_Types.h"
#define OS_NUM_APPMODES (2U)
#define OS_NUM_APPLICATIONS (5U)
#define OS_NUM_SPINLOCKS (0U)
#define OS_NUM_TRUSTED_FUNCTIONS (0U)
#define OS_NUM_IOC_CALLBACK_FUNCTIONS (Os_const_ioc_function_count)
#define OS_NUM_EVENTS (0U)
#define OS_NUM_TASKS (29U)
#define OS_NUM_ISRS (2U)
#define OS_NUM_RESOURCES (7U)
#define OS_NUM_ALARMS (0U)
#define OS_NUM_SCHEDULETABLES (0U)
#define OS_NUM_PERIPHERALAREAS (0U)
#define OS_NUM_TRACEPOINTS (5U)
#define OS_NUM_TASKTRACEPOINTS (0U)
#define OS_NUM_INTERVALS (0U)
#define OS_NUM_TRACECATEGORIES (0U)
#define OS_TRACE_CATEGORY_ALWAYS ((Os_TraceCategoriesType)(0x80000000UL))
#define OS_TRACE_CATEGORY_NEVER  ((Os_TraceCategoriesType)(0x00000000UL))
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_TICKS2*) */
#define OS_NUM_COUNTERS (0U)
#define OSCYCLEDURATION (4.16666666666667) /* [$UKS 1224] */
#define OSCYCLESPERSECOND (240000000U) /* [$UKS 1225] */
#define OSSWTICKDURATION (12.5) /* [$UKS 1226] */
#define OSSWTICKSPERSECOND (80000000U) /* [$UKS 1227] */
#define OSMAXALLOWEDVALUE OSMAXALLOWEDVALUE_SystemCounter /* [$UKS 215] */
#define OSTICKSPERBASE OSTICKSPERBASE_SystemCounter /* [$UKS 216] */
#define OSMINCYCLE OSMINCYCLE_SystemCounter /* [$UKS 218] */
#define OSTICKDURATION OSTICKDURATION_SystemCounter /* [$UKS 217] */
#define OS_NUM_CORES (2U)
#define OS_NUM_OS_CORES (2U)
#define OS_CORE_ID_MASTER (0U)  /* [$UKS 1609] */
/* [$UKS 1611] */
#define OS_CORE_ID_0 (0U)
#define OS_CORE_ID_1 (1U)

/* ------------------------------------------------- */
/* [MISRA 2012 Rule 20.1] */ /*lint -save -estring(9019, *) */
#define OS_START_SEC_CODE
#include "Std_Types.h" /* [MISRA 2012 Dir 4.10] */ /*lint !e537 !e451 */
/*lint -restore */
extern FUNC(void, OS_CODE) Os_Entry_TaskBackground(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskBackgroundCore0(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskBswCrypto(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskNvDataHandle(void);
extern FUNC(void, OS_CODE) Os_Entry_Task100ms(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskBswModeSwitchEvent(void);
extern FUNC(void, OS_CODE) Os_Entry_Task_Autosar_RTE_100ms(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskMemStack_10ms(void);
extern FUNC(void, OS_CODE) Os_Entry_Task_Autosar_RTE_10ms(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskBswCyclic(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskBswCyclicHwLibCore(void);
extern FUNC(void, OS_CODE) Os_Entry_Task10ms(void);
extern FUNC(void, OS_CODE) Os_Entry_Task_Autosar_RTE_5ms(void);
extern FUNC(void, OS_CODE) Os_Entry_Task5ms(void);
extern FUNC(void, OS_CODE) Os_Entry_Task5ms_PartTwo_HwLib(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskBswCom(void);
extern FUNC(void, OS_CODE) Os_Entry_Task2ms(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskBswBusData(void);
extern FUNC(void, OS_CODE) Os_Entry_Task1ms_PartFive(void);
extern FUNC(void, OS_CODE) Os_Entry_Task1ms_PartFour_HwLib(void);
extern FUNC(void, OS_CODE) Os_Entry_Task1ms_PartThree(void);
extern FUNC(void, OS_CODE) Os_Entry_Task1ms_PartTwo_HwLib(void);
extern FUNC(void, OS_CODE) Os_Entry_Task1ms(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskOem1_Init(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskOem2_Init(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskOem2_1ms(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskOem1_1ms(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskInit(void);
extern FUNC(void, OS_CODE) Os_Entry_TaskInitCore0(void);
extern FUNC(void, OS_CODE) Os_Entry_Os_1ms_Tick(void);
extern FUNC(void, OS_CODE) Os_Entry_adAD0Finished(void);
/* [MISRA 2012 Rule 20.1] */ /*lint -save -estring(9019, *) */
#define OS_STOP_SEC_CODE
#include "Std_Types.h" /* [MISRA 2012 Dir 4.10] */ /*lint !e537 !e451 */
/*lint -restore */
