.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$AlarmPolicy;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BaiduInjector;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;
    }
.end annotation


# static fields
.field private static final ACTION_PHB_STATE_CHANGE:Ljava/lang/String; = "huawei.action.intent.PHB_STATE_CHANGE"

.field private static final ALARM_EVENT:I = 0x1

.field private static final APP_HAS_TOO_MANY_ALARM:Ljava/lang/String; = "huawei.intent.action.APP_HAS_TOO_MANY_ALARM"

.field private static final APP_PKG:Ljava/lang/String; = "pkg"

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field private static final DESKCLOCK_PACKAGENAME:Ljava/lang/String; = "com.android.deskclock"

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static final FORCE_KILL:Ljava/lang/String; = "forceKill"

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final PHB_DEBUG_ENABLE_PROPERTY:Ljava/lang/String; = "persist.sys.phb.debug.enable"

.field private static final PHB_ENABLE:Ljava/lang/String; = "phb_enable"

.field private static final PHB_ENABLE_PROPERTY:Ljava/lang/String; = "persist.sys.phb.enable"

.field private static final QUANTUM:J = 0xdbba0L

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static bPhbDebug:Z = false

.field private static bPhbEnabled:Z = false

.field private static final localLOGV:Z = true

.field private static localUHBDebug:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;

.field private static mNetworkAvailable:Z

.field static mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;


# instance fields
.field private final FORCE_KILL_PROCESS:I

.field private final KILL_PROCESS_LOWER_LIMIT:I

.field private final SCAN_LIST_LOWER_LIMIT:I

.field private final mBackUpAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private final mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

.field private mIsFirstPowerOffAlarm:Z

.field private mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/internal/util/LocalLog;

.field private final mPendingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhbBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhbWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mRtcAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtcWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->localUHBDebug:Z

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 162
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    .line 163
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    .line 164
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 141
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z

    .line 149
    new-instance v3, Lcom/android/internal/util/LocalLog;

    const-string v4, "AlarmManager"

    invoke-direct {v3, v4}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 151
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPhbBlackList:Ljava/util/ArrayList;

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPhbWhiteList:Ljava/util/ArrayList;

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    .line 169
    new-instance v3, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v3}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    .line 174
    iput v5, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 177
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    .line 178
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 181
    new-instance v3, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 184
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/server/AlarmManagerService;->SCAN_LIST_LOWER_LIMIT:I

    .line 185
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/server/AlarmManagerService;->KILL_PROCESS_LOWER_LIMIT:I

    .line 186
    const/16 v3, 0x96

    iput v3, p0, Lcom/android/server/AlarmManagerService;->FORCE_KILL_PROCESS:I

    .line 275
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    .line 1630
    new-instance v3, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    .line 280
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v3

    iput v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    .line 284
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, tz:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->setTimeZone(Ljava/lang/String;)V

    .line 290
    :cond_0
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;-><init>(Lcom/android/server/AlarmManagerService;)V

    sput-object v3, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    .line 292
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 293
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "AlarmManager"

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 295
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const/high16 v3, 0x800

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v5, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 305
    new-instance v3, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 306
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 307
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 308
    new-instance v3, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 311
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initPhbConfig()V

    .line 314
    iget v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 315
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string v3, "AlarmManager"

    const-string v4, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localUHBDebug:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    sput-boolean p0, Lcom/android/server/AlarmManagerService;->localUHBDebug:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z

    return p1
.end method

.method static synthetic access$1700()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1908(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1910(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updatePendingWakeupAlarms()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$2800(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .parameter "alarm"

    .prologue
    const/4 v9, 0x2

    .line 941
    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 944
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 945
    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v6, v9, :cond_1

    .line 946
    :cond_0
    sget-object v6, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v6, p1}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->updateAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 949
    :cond_1
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 950
    .local v3, index:I
    if-gez v3, :cond_2

    .line 951
    rsub-int/lit8 v6, v3, 0x0

    add-int/lit8 v3, v6, -0x1

    .line 953
    :cond_2
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding alarm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 956
    sget-boolean v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-eqz v6, :cond_5

    .line 957
    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v6, :cond_3

    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v6, v9, :cond_4

    .line 958
    :cond_3
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->localUHBDebug:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " alarms:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 979
    :cond_4
    :goto_0
    return v3

    .line 963
    :cond_5
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alarms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v4, 0x0

    .line 966
    .local v4, position:I
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 967
    .local v5, time:Landroid/text/format/Time;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 968
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 969
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    add-int/lit8 v4, v4, 0x1

    .line 973
    const/16 v6, 0x1e

    if-le v4, v6, :cond_6

    goto :goto_0
.end method

.method private addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1447
    .local p2, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1463
    :cond_0
    return-void

    .line 1450
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1451
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1452
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1453
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1454
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1456
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1458
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPendingAlarms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", repeatInterval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addPendingWakeupAlarms(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1466
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1483
    :cond_0
    return-void

    .line 1470
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1471
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1472
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1473
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->isTargetAlarmMatched(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1474
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1476
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1478
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPendingWakeupAlarms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", repeatInterval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native clearAlarm(II)I
.end method

.method private native close(I)V
.end method

.method private disableLocked(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v8, 0x2

    .line 633
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 663
    :cond_0
    return-void

    .line 638
    :cond_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "td_alarm_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 639
    .local v1, db_alarm_mode:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 641
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 642
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 644
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, tPname:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/AlarmManagerService;->isSysApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    if-ne v1, v8, :cond_3

    const-string v5, "true"

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/provider/Settings$Alarm;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 649
    :cond_3
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_5

    .line 650
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 651
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 658
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v2

    .line 659
    .local v2, index:I
    if-nez v2, :cond_2

    .line 660
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0

    .line 652
    .end local v2           #index:I
    :cond_5
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v5, v8, :cond_4

    .line 653
    const/4 v5, 0x3

    iput v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 654
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "pw"
    .parameter
    .parameter "prefix"
    .parameter "label"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1190
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1191
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1192
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1193
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1190
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1196
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private static dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "log"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2891
    .local p0, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v2, 0x0

    .line 2892
    .local v2, position:I
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpAlarmlist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2894
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v2, 0x1

    .end local v2           #position:I
    .local v3, position:I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->getAlarmTimeString(Lcom/android/server/AlarmManagerService$Alarm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .end local v3           #position:I
    .restart local v2       #position:I
    goto :goto_0

    .line 2896
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private getAlarmList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    packed-switch p1, :pswitch_data_0

    .line 937
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 931
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 932
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 933
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 934
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 930
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getAlarmTimeString(Lcom/android/server/AlarmManagerService$Alarm;)Ljava/lang/String;
    .locals 13
    .parameter "a"

    .prologue
    const-wide/16 v11, 0x3e8

    .line 2899
    iget v6, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 2900
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": origWhen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v9, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    sub-long/2addr v7, v9

    div-long/2addr v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", adj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". cyc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2907
    :goto_0
    return-object v6

    .line 2904
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2905
    .local v4, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2906
    .local v2, nowELAPSED:J
    sub-long v0, v4, v2

    .line 2907
    .local v0, delta:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": origWhen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    add-long/2addr v7, v0

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long/2addr v7, v0

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v9, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    sub-long/2addr v7, v9

    div-long/2addr v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", adj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". cyc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getNetworkAvailable()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1583
    const/4 v2, 0x0

    .line 1584
    .local v2, mMobileConnected:Z
    const/4 v4, 0x0

    .line 1585
    .local v4, mWifiConnected:Z
    const/4 v0, 0x0

    .line 1587
    .local v0, available:Z
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1588
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 1589
    .local v3, mMobileState:Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v8, :cond_4

    .line 1590
    sget-boolean v8, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v8, :cond_0

    const-string v8, "AlarmManager"

    const-string v9, "PHB: mobile network connected"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_0
    const/4 v2, 0x1

    .line 1596
    :goto_0
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 1597
    .local v5, mWifiState:Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_5

    .line 1598
    sget-boolean v8, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v8, :cond_1

    const-string v8, "AlarmManager"

    const-string v9, "PHB: wi-fi network connected"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_1
    const/4 v4, 0x1

    .line 1604
    :goto_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_6

    :cond_2
    move v0, v7

    .line 1605
    :goto_2
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v6, :cond_3

    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PHB: network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_3
    return v0

    .line 1593
    .end local v5           #mWifiState:Landroid/net/NetworkInfo$State;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1601
    .restart local v5       #mWifiState:Landroid/net/NetworkInfo$State;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    move v0, v6

    .line 1604
    goto :goto_2
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .parameter "pi"

    .prologue
    .line 2150
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 2151
    .local v1, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2152
    .local v0, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_0

    .line 2153
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Ljava/lang/String;)V

    .line 2154
    .restart local v0       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    :cond_0
    return-object v0
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 2
    .parameter "milliSec"

    .prologue
    .line 2913
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2914
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 2915
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    .line 2916
    .local v1, timeStr:Ljava/lang/String;
    return-object v1
.end method

.method private native init()I
.end method

.method private initPhbConfig()V
    .locals 20

    .prologue
    .line 1236
    const-string v6, "/data/cust/xml/phb_no_net.xml"

    .line 1237
    .local v6, PHB_XML_BLACKLIST_FILE:Ljava/lang/String;
    const-string v5, "array"

    .line 1238
    .local v5, PHB_XML_ARRAY:Ljava/lang/String;
    const-string v7, "item"

    .line 1239
    .local v7, PHB_XML_ITEM:Ljava/lang/String;
    const-string v3, "type"

    .line 1240
    .local v3, PHB_LIST_TYPE:Ljava/lang/String;
    const-string v2, "black_list"

    .line 1241
    .local v2, PHB_BLACK_LIST:Ljava/lang/String;
    const-string v4, "white_list"

    .line 1243
    .local v4, PHB_WHITE_LIST:Ljava/lang/String;
    const/16 v17, 0x1

    const-string v18, "persist.sys.phb.debug.enable"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1244
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    .line 1248
    :goto_0
    sget-boolean v17, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v17, :cond_0

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bPhbDebug: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getPhbState()Z

    move-result v17

    sput-boolean v17, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    .line 1251
    sget-boolean v17, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v17, :cond_1

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bPhbEnabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_1
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    .line 1254
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1255
    .local v11, filter:Landroid/content/IntentFilter;
    const-string v17, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1256
    const-string v17, "huawei.action.intent.PHB_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1263
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    const-string v17, "/data/cust/xml/phb_no_net.xml"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v12, is:Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 1265
    .local v16, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1266
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 1267
    .local v10, eventType:I
    const/4 v15, 0x0

    .line 1268
    .local v15, tag_item:Z
    const/4 v8, 0x0

    .line 1269
    .local v8, black_list:Z
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_9

    .line 1270
    packed-switch v10, :pswitch_data_0

    .line 1301
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    goto :goto_1

    .line 1246
    .end local v8           #black_list:Z
    .end local v10           #eventType:I
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v15           #tag_item:Z
    .end local v16           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    goto/16 :goto_0

    .line 1272
    .restart local v8       #black_list:Z
    .restart local v10       #eventType:I
    .restart local v11       #filter:Landroid/content/IntentFilter;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v15       #tag_item:Z
    .restart local v16       #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "array"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1273
    const/16 v17, 0x0

    const-string v18, "type"

    invoke-interface/range {v16 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1274
    .local v13, listType:Ljava/lang/String;
    const-string v17, "black_list"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1275
    const/4 v8, 0x1

    .line 1280
    .end local v13           #listType:Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "item"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1281
    const/4 v15, 0x1

    goto :goto_2

    .line 1276
    .restart local v13       #listType:Ljava/lang/String;
    :cond_5
    const-string v17, "white_list"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1277
    const/4 v8, 0x0

    goto :goto_3

    .line 1285
    .end local v13           #listType:Ljava/lang/String;
    :pswitch_2
    if-eqz v15, :cond_6

    .line 1286
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    .line 1287
    .local v14, packageName:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPhbBlackList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    sget-boolean v17, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v17, :cond_6

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PHB blacklist package: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ***"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    .end local v14           #packageName:Ljava/lang/String;
    :cond_6
    :goto_4
    const/4 v15, 0x0

    .line 1296
    goto :goto_2

    .line 1291
    .restart local v14       #packageName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPhbWhiteList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    sget-boolean v17, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v17, :cond_6

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PHB whitelist package: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ***"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1306
    .end local v8           #black_list:Z
    .end local v10           #eventType:I
    .end local v12           #is:Ljava/io/InputStream;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #tag_item:Z
    .end local v16           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v9

    .line 1308
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 1314
    .end local v9           #e:Ljava/io/IOException;
    :cond_8
    :goto_5
    return-void

    .line 1303
    .restart local v8       #black_list:Z
    .restart local v10       #eventType:I
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v15       #tag_item:Z
    .restart local v16       #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    if-eqz v12, :cond_8

    .line 1304
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 1309
    .end local v8           #black_list:Z
    .end local v10           #eventType:I
    .end local v12           #is:Ljava/io/InputStream;
    .end local v15           #tag_item:Z
    .end local v16           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v9

    .line 1311
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_5

    .line 1270
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isSysApp(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 332
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 333
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 334
    :cond_0
    const/4 v2, 0x1

    .line 339
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return v2

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isTargetAlarmMatched(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 29
    .parameter "alarm"

    .prologue
    .line 1317
    const/16 v22, 0x0

    .line 1318
    .local v22, matched:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v24

    .line 1319
    .local v24, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 1320
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 1321
    .local v5, action:Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 1324
    .local v9, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPhbBlackList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1325
    .local v16, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1326
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1327
    .local v23, pName:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1328
    sget-boolean v26, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v26, :cond_1

    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PHB blacklist match: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_1
    const/16 v22, 0x1

    .line 1333
    .end local v23           #pName:Ljava/lang/String;
    :cond_2
    if-nez v22, :cond_7

    .line 1337
    if-eqz v15, :cond_f

    new-instance v21, Landroid/util/Pair;

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1338
    .local v21, mTarget:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :goto_0
    sget-object v26, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    #getter for: Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$200(Lcom/android/server/AlarmManagerService$AlarmPolicy;)Ljava/util/HashMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1339
    .local v6, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1340
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    .line 1341
    .local v11, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v0, v11, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1342
    .local v14, ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1343
    sget-boolean v26, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v26, :cond_5

    const-string v27, "AlarmManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PHB histroy match: act="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", comp="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_5
    const/16 v22, 0x1

    .line 1349
    .end local v11           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_6
    if-eqz v22, :cond_3

    .line 1354
    .end local v6           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v21           #mTarget:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_7
    if-eqz v22, :cond_a

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPhbWhiteList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1357
    .local v17, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 1358
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1359
    .restart local v23       #pName:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 1360
    sget-boolean v26, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v26, :cond_9

    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PHB whitelist match: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_9
    const/16 v22, 0x0

    .line 1367
    .end local v17           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v23           #pName:Ljava/lang/String;
    :cond_a
    if-eqz v22, :cond_b

    .line 1368
    const/16 v19, 0x0

    .line 1370
    .local v19, locked:Z
    :try_start_0
    const-string v26, "power"

    invoke-static/range {v26 .. v26}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v20

    .line 1371
    .local v20, mPowerManager:Landroid/os/IPowerManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->getPartialLockByUid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 1372
    if-eqz v19, :cond_b

    .line 1373
    const/16 v22, 0x0

    .line 1382
    .end local v19           #locked:Z
    .end local v20           #mPowerManager:Landroid/os/IPowerManager;
    :cond_b
    :goto_1
    if-eqz v22, :cond_e

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1385
    .local v18, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    .line 1386
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1387
    .local v25, tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v23

    .line 1388
    .restart local v23       #pName:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1389
    .local v3, act:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1390
    .local v7, com:Landroid/content/ComponentName;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 1391
    if-eqz v3, :cond_10

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    const/4 v4, 0x1

    .line 1392
    .local v4, actDiff:Z
    :goto_2
    if-eqz v7, :cond_11

    invoke-virtual {v7, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    const/4 v8, 0x1

    .line 1394
    .local v8, comDiff:Z
    :goto_3
    if-nez v4, :cond_c

    if-nez v8, :cond_c

    .line 1395
    sget-boolean v26, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v26, :cond_d

    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PHB remove the same alarm: tempAlarm="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", act="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", com="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_d
    const/16 v22, 0x0

    .line 1403
    .end local v3           #act:Ljava/lang/String;
    .end local v4           #actDiff:Z
    .end local v7           #com:Landroid/content/ComponentName;
    .end local v8           #comDiff:Z
    .end local v18           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v23           #pName:Ljava/lang/String;
    .end local v25           #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_e
    return v22

    .line 1337
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1375
    .restart local v19       #locked:Z
    :catch_0
    move-exception v10

    .line 1377
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1378
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1391
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v19           #locked:Z
    .restart local v3       #act:Ljava/lang/String;
    .restart local v7       #com:Landroid/content/ComponentName;
    .restart local v18       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v23       #pName:Ljava/lang/String;
    .restart local v25       #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_10
    const/4 v4, 0x0

    goto :goto_2

    .line 1392
    .restart local v4       #actDiff:Z
    :cond_11
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 921
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 922
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const/4 v1, 0x1

    .line 926
    :goto_1
    return v1

    .line 921
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 926
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private optionalDisableLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 769
    :cond_0
    return-void

    .line 746
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 748
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 751
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, tPname:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v4, :cond_4

    .line 756
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 757
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 764
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v1

    .line 765
    .local v1, index:I
    if-nez v1, :cond_2

    .line 766
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0

    .line 758
    .end local v1           #index:I
    :cond_4
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 759
    const/4 v4, 0x3

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 760
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter
    .parameter "operation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const-wide/16 v2, 0x0

    .line 827
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 853
    :cond_0
    return-void

    .line 832
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 834
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 840
    .local v6, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 842
    const-string v0, "true"

    const-string v1, "ro.poweroff_alarm"

    const-string v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_2

    const-string v0, "com.android.deskclock"

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    const-string v0, "AlarmManager"

    const-string v1, "remove RTC set"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->setRTC(IJJ)V

    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 884
    :cond_0
    return-void

    .line 876
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 878
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 880
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 881
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private removePendingAlarms(Ljava/lang/String;)V
    .locals 12
    .parameter "packageName"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1489
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1494
    :cond_1
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1495
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1497
    .local v4, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1499
    .local v2, nowELAPSED:J
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1500
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz p1, :cond_3

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1501
    :cond_3
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    if-eqz v6, :cond_5

    .line 1503
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eq v6, v11, :cond_4

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v6, :cond_5

    :cond_4
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-nez v6, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->isTargetAlarmMatched(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1507
    const-string v6, "AlarmManager"

    const-string v7, "match phb condition"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1509
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1514
    :cond_5
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v6, :cond_6

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 1516
    :cond_6
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_7

    .line 1517
    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1523
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1525
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v6, v7}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1527
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1528
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePendingAlarms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", repeatInterval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1518
    :cond_8
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eq v6, v11, :cond_9

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 1520
    :cond_9
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_7

    .line 1521
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_2

    .line 1532
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #nowELAPSED:J
    .end local v4           #nowRTC:J
    :cond_a
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 1533
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1535
    :cond_b
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 1536
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1538
    :cond_c
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 1539
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1541
    :cond_d
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1542
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto/16 :goto_0
.end method

.method private removePendingWakeupAlarms()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1547
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1553
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1555
    .local v4, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1557
    .local v2, nowELAPSED:J
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1558
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v6, :cond_4

    .line 1559
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    .line 1560
    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1565
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1567
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v6, v7}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1569
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1570
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v6, :cond_2

    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePendingWakeupAlarms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", repeatInterval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1561
    :cond_4
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1562
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    .line 1563
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_2

    .line 1574
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #nowELAPSED:J
    .end local v4           #nowRTC:J
    :cond_5
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1575
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1577
    :cond_6
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1578
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto/16 :goto_0
.end method

.method private removeUserLocked(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 911
    :cond_0
    return-void

    .line 903
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 905
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 907
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 908
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static native set(IIJJ)V
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 12
    .parameter "alarm"

    .prologue
    const/4 v2, 0x1

    const-wide/16 v10, 0x3e8

    .line 1001
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1006
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 1007
    const-wide/16 v3, 0x0

    .line 1008
    .local v3, alarmSeconds:J
    const-wide/16 v5, 0x0

    .line 1014
    .local v5, alarmNanoseconds:J
    :goto_0
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setBaidu(IIJJ)V

    .line 1018
    const-string v0, "true"

    const-string v1, "ro.poweroff_alarm"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_0

    const-string v0, "com.android.deskclock"

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    const-string v0, "AlarmManager"

    const-string v1, "set the deskclock alarm to Arm9 RTC"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerService;->setRTC(IJJ)V

    .line 1037
    .end local v3           #alarmSeconds:J
    .end local v5           #alarmNanoseconds:J
    :cond_0
    :goto_1
    return-void

    .line 1010
    :cond_1
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    div-long v3, v0, v10

    .line 1011
    .restart local v3       #alarmSeconds:J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    rem-long/2addr v0, v10

    mul-long/2addr v0, v10

    mul-long v5, v0, v10

    .restart local v5       #alarmNanoseconds:J
    goto :goto_0

    .line 1031
    .end local v3           #alarmSeconds:J
    .end local v5           #alarmNanoseconds:J
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 1032
    .local v7, msg:Landroid/os/Message;
    iput v2, v7, Landroid/os/Message;->what:I

    .line 1034
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private native setRTC(IJJ)V
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 11
    .parameter
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1669
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1670
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1672
    .local v2, repeats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1674
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1676
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking active alarm when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v5, p3

    if-lez v5, :cond_2

    .line 1734
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1735
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1736
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1737
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v7, v7

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1738
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_1

    .line 1683
    :cond_2
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 1685
    :cond_3
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1686
    .local v3, time:Landroid/text/format/Time;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_9

    .line 1687
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 1692
    :goto_2
    const-string v5, "%Y %b %d %H:%M:%S %z"

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1693
    .local v4, timeStr:Ljava/lang/String;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wakeup alarm triggering: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "} ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") repeatInterval: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    .end local v3           #time:Landroid/text/format/Time;
    .end local v4           #timeStr:Ljava/lang/String;
    :cond_4
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v5, p3, v5

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    .line 1703
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm is late! alarm time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delay (in seconds): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v7, p3, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_5
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alarm triggering: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1712
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    .line 1715
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v5, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v7, p3, v7

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1717
    :cond_6
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 1721
    :cond_7
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1725
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1728
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 1729
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1689
    .restart local v3       #time:Landroid/text/format/Time;
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long/2addr v5, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_2

    .line 1741
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3           #time:Landroid/text/format/Time;
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1742
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1744
    :cond_b
    return-void
.end method

.method private updatePendingWakeupAlarms()V
    .locals 3

    .prologue
    .line 1610
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1611
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->getNetworkAvailable()Z

    move-result v0

    .line 1613
    .local v0, available:Z
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-ne v1, v0, :cond_0

    .line 1614
    monitor-exit v2

    .line 1628
    :goto_0
    return-void

    .line 1616
    :cond_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    .line 1617
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    if-eqz v1, :cond_1

    .line 1618
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-eqz v1, :cond_2

    .line 1620
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->removePendingWakeupAlarms()V

    .line 1627
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #available:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1623
    .restart local v0       #available:Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->addPendingWakeupAlarms(Ljava/util/ArrayList;)V

    .line 1624
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->addPendingWakeupAlarms(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method public disableLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 617
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->disableLocked(Ljava/util/ArrayList;)V

    .line 619
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v2, v4}, Lcom/android/server/AlarmManagerService;->clearAlarm(II)I

    move-result v0

    .line 620
    .local v0, i:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-nez v0, :cond_0

    .line 621
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->disableLocked(Ljava/util/ArrayList;)V

    .line 626
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->clearAlarm(II)I

    move-result v1

    .line 627
    .local v1, j:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-nez v1, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 630
    :cond_1
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    :goto_0
    return-void

    .line 1049
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1050
    :try_start_0
    const-string v3, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1052
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1053
    .local v7, now:J
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v20, sdf:Ljava/text/SimpleDateFormat;
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    const-string v3, "  Realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "RTC_WAKEUP"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1060
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "RTC"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1064
    .end local v7           #now:J
    .end local v20           #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1065
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1066
    .restart local v7       #now:J
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    const-string v3, "  Elapsed realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p2

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "ELAPSED_WAKEUP"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1072
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "ELAPSED"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1077
    .end local v7           #now:J
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1078
    const-string v3, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1079
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v4, "  Recent problems"

    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1082
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1085
    :cond_7
    const/16 v3, 0xa

    new-array v0, v3, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v22, v0

    .line 1086
    .local v22, topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v11, Lcom/android/server/AlarmManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1097
    .local v11, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v18, 0x0

    .line 1098
    .local v18, len:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1099
    .local v9, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1101
    .local v10, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1102
    .local v13, fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1103
    .local v14, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v18, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v3, v1, v14, v11}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v19

    .line 1105
    .local v19, pos:I
    :goto_2
    if-gez v19, :cond_a

    .line 1106
    move/from16 v0, v19

    neg-int v3, v0

    add-int/lit8 v19, v3, -0x1

    .line 1108
    :cond_a
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_9

    .line 1109
    move-object/from16 v0, v22

    array-length v3, v0

    sub-int v3, v3, v19

    add-int/lit8 v12, v3, -0x1

    .line 1110
    .local v12, copylen:I
    if-lez v12, :cond_b

    .line 1111
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    :cond_b
    aput-object v14, v22, v19

    .line 1114
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_9

    .line 1115
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1103
    .end local v12           #copylen:I
    .end local v19           #pos:I
    :cond_c
    const/16 v19, 0x0

    goto :goto_2

    .line 1120
    .end local v9           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13           #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v14           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_d
    if-lez v18, :cond_11

    .line 1121
    const-string v3, "  Top Alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_11

    .line 1123
    aget-object v14, v22, v15

    .line 1124
    .restart local v14       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_e

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1126
    :cond_e
    iget-wide v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1127
    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1128
    const-string v3, " wakeups, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1129
    const-string v3, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1131
    const-string v3, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1132
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_f

    .line 1133
    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    :cond_f
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_10

    .line 1136
    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1122
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1142
    .end local v14           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v15           #i:I
    :cond_11
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    const-string v3, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v21, tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1146
    .restart local v9       #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1147
    .restart local v10       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v3, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1148
    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v3, :cond_13

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    :cond_13
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1151
    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1152
    const-string v3, " wakeups:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 1155
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1156
    .restart local v13       #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1185
    .end local v9           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v13           #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #len:I
    .end local v21           #tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v22           #topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    :catchall_0
    move-exception v3

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1158
    .restart local v9       #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v10       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v11       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v18       #len:I
    .restart local v21       #tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v22       #topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_14
    :try_start_1
    move-object/from16 v0, v21

    invoke-static {v0, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1159
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_12

    .line 1160
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1161
    .restart local v14       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_15

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    :cond_15
    iget-wide v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1164
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1165
    const-string v3, " wakes "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1166
    const-string v3, " alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_16

    .line 1168
    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    :cond_16
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_17

    .line 1171
    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1159
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 1177
    .end local v9           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v15           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_18
    sget-object v3, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    #calls: Lcom/android/server/AlarmManagerService$AlarmPolicy;->reInitAlarmPolicy()V
    invoke-static {v3}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$300(Lcom/android/server/AlarmManagerService$AlarmPolicy;)V

    .line 1178
    sget-object v3, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-eqz v3, :cond_19

    .line 1179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uhb on. cyc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    :goto_6
    monitor-exit v23

    goto/16 :goto_0

    .line 1182
    :cond_19
    const-string v3, "uhb off"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method

.method public enableLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 668
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->enableLocked(Ljava/util/ArrayList;)V

    .line 670
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->clearAlarm(II)I

    move-result v0

    .line 671
    .local v0, i:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-nez v0, :cond_0

    .line 672
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 674
    :cond_0
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->clearAlarm(II)I

    move-result v1

    .line 675
    .local v1, j:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-nez v1, :cond_1

    .line 676
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 678
    :cond_1
    return-void
.end method

.method public enableLocked(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 681
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 711
    :cond_0
    return-void

    .line 686
    :cond_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "td_alarm_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 687
    .local v1, db_alarm_mode:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 689
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 690
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 692
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, tPname:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/AlarmManagerService;->isSysApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq v1, v8, :cond_2

    if-ne v1, v9, :cond_3

    const-string v5, "true"

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/provider/Settings$Alarm;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 698
    :cond_3
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v5, v8, :cond_5

    .line 699
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 700
    iput v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 705
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 706
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v2

    .line 707
    .local v2, index:I
    if-nez v2, :cond_2

    .line 708
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0

    .line 701
    .end local v2           #index:I
    :cond_5
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 702
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 703
    iput v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    .line 327
    return-void

    .line 325
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    throw v0
.end method

.method public getAlarmHeartBeat()I
    .locals 3

    .prologue
    .line 2959
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-eqz v0, :cond_0

    .line 2960
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlarmHearBeat =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 2965
    :goto_0
    return v0

    .line 2964
    :cond_0
    const-string v0, "AlarmManager"

    const-string v1, "UHB is turned off, return 0."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlarmPolicyState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2933
    const-string v0, "persist.sys.alarm.enable.uhb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 2934
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sput-boolean v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 2938
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAlarmPolicyState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    return v0

    .line 2936
    :cond_0
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sput-boolean v1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    goto :goto_0
.end method

.method public getPhbState()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1223
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1224
    :try_start_0
    const-string v0, "persist.sys.phb.enable"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1225
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    .line 1229
    :goto_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhbState =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    return v0

    .line 1227
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    goto :goto_0

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optionalEnableLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 799
    :cond_0
    return-void

    .line 776
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 778
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 779
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 781
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, tPname:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 786
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 787
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 788
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 793
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 794
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v1

    .line 795
    .local v1, index:I
    if-nez v1, :cond_2

    .line 796
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0

    .line 789
    .end local v1           #index:I
    :cond_4
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 790
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 791
    const/4 v4, 0x2

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    goto :goto_1
.end method

.method public optionalLocked(Ljava/lang/String;Z)V
    .locals 5
    .parameter "packageName"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 715
    if-eqz p2, :cond_2

    .line 716
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/AlarmManagerService;->optionalDisableLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 718
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v2, v4}, Lcom/android/server/AlarmManagerService;->clearAlarm(II)I

    move-result v0

    .line 719
    .local v0, i:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-nez v0, :cond_0

    .line 720
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 722
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/AlarmManagerService;->optionalDisableLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 723
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->clearAlarm(II)I

    move-result v1

    .line 724
    .local v1, j:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-nez v1, :cond_1

    .line 725
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 739
    :cond_1
    :goto_0
    return-void

    .line 728
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/AlarmManagerService;->optionalEnableLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 730
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->clearAlarm(II)I

    move-result v0

    .line 731
    .restart local v0       #i:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-nez v0, :cond_3

    .line 732
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 734
    :cond_3
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->clearAlarm(II)I

    move-result v1

    .line 735
    .restart local v1       #j:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-nez v1, :cond_1

    .line 736
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "operation"

    .prologue
    .line 803
    if-nez p1, :cond_0

    .line 809
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 807
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 808
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAllPendingAlarms()V
    .locals 2

    .prologue
    .line 1438
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1439
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->removePendingAlarms(Ljava/lang/String;)V

    .line 1440
    monitor-exit v1

    .line 1441
    return-void

    .line 1440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 813
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 814
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 815
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 817
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 820
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 822
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 823
    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method public removeUserLocked(I)V
    .locals 1
    .parameter "userHandle"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 888
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 889
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 890
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 892
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 894
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 895
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 344
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 345
    return-void
.end method

.method public setAlarmDynList(Ljava/lang/String;I)I
    .locals 6
    .parameter "pkg"
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2973
    if-nez p1, :cond_0

    .line 2974
    const-string v3, "AlarmManager"

    const-string v4, "null pkg"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    :goto_0
    return v2

    .line 2978
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2979
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 2980
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission not allowed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " try set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2983
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 2984
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2985
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package not found, error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2989
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    if-nez p2, :cond_3

    .line 2990
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$3100()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2991
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blacklist already contains: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2992
    goto/16 :goto_0

    .line 2994
    :cond_2
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$3100()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2995
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add black list:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2996
    goto/16 :goto_0

    .line 2998
    :cond_3
    const/4 v4, 0x1

    if-ne v4, p2, :cond_4

    .line 2999
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$3100()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3000
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove black list:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3001
    goto/16 :goto_0

    .line 3003
    :cond_4
    const/4 v4, 0x2

    if-ne v4, p2, :cond_6

    .line 3004
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$3200()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3005
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Whitelist already contains: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3006
    goto/16 :goto_0

    .line 3008
    :cond_5
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$3200()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3009
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add white list:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3010
    goto/16 :goto_0

    .line 3012
    :cond_6
    const/4 v4, 0x4

    if-ne v4, p2, :cond_7

    .line 3013
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$3200()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3014
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove white list:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3015
    goto/16 :goto_0

    .line 3017
    :cond_7
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid type. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAlarmHeartBeat(I)Z
    .locals 3
    .parameter "hb"

    .prologue
    .line 2943
    const v0, 0x1d4c0

    if-lt p1, v0, :cond_1

    const v0, 0x927c0

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-eqz v0, :cond_1

    .line 2945
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlarmHeartBeat =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    if-eq p1, v0, :cond_0

    .line 2947
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sput p1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 2948
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->adjustAlarmListWhenUHBEnabled()V

    .line 2950
    :cond_0
    const/4 v0, 0x1

    .line 2954
    :goto_0
    return v0

    .line 2953
    :cond_1
    const-string v0, "AlarmManager"

    const-string v1, "Make sure UHB is turned on and the value is between 2 and 10 mininuts"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlarmPolicyState(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 2920
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAlarmPolicyState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-ne p1, v0, :cond_0

    .line 2930
    :goto_0
    return-void

    .line 2922
    :cond_0
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sput-boolean p1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 2923
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->adjustAlarmListWhenUHBEnabled()V

    .line 2925
    :goto_1
    if-eqz p1, :cond_2

    .line 2926
    const-string v0, "persist.sys.alarm.enable.uhb"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2924
    :cond_1
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->adjustAlarmListWhenUHBDisabled()V

    goto :goto_1

    .line 2928
    :cond_2
    const-string v0, "persist.sys.alarm.enable.uhb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAlarmsPending(Ljava/util/List;ZZ)V
    .locals 4
    .parameter
    .parameter "pending"
    .parameter "allAlarms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1410
    .local p1, pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1432
    :goto_0
    return-void

    .line 1413
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1414
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1415
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1416
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1417
    .local v1, pkgName:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 1419
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1420
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1421
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1422
    if-eqz p3, :cond_1

    .line 1423
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1424
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1431
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1428
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->removePendingAlarms(Ljava/lang/String;)V

    goto :goto_1

    .line 1431
    .end local v1           #pkgName:Ljava/lang/String;
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 14
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 525
    if-nez p6, :cond_0

    .line 526
    const-string v2, "AlarmManager"

    const-string v3, "setInexactRepeating ignored because there is no intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_0
    return-void

    .line 530
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_1

    .line 531
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating ignored because interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_1
    const-wide/32 v2, 0xdbba0

    rem-long v2, p4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 538
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " not a quantum multiple"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 545
    :cond_2
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-nez p1, :cond_4

    :cond_3
    const/4 v9, 0x1

    .line 546
    .local v9, isRtc:Z
    :goto_1
    if-eqz v9, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v12, v2, v6

    .line 553
    .local v12, skew:J
    :goto_2
    sub-long v2, p2, v12

    const-wide/32 v6, 0xdbba0

    rem-long v10, v2, v6

    .line 554
    .local v10, offset:J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_6

    .line 555
    sub-long v2, p2, v10

    const-wide/32 v6, 0xdbba0

    add-long v4, v2, v6

    .line 561
    .local v4, adjustedTriggerTime:J
    :goto_3
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating: type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " interval="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " trigger="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " orig="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    .line 563
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 545
    .end local v4           #adjustedTriggerTime:J
    .end local v9           #isRtc:Z
    .end local v10           #offset:J
    .end local v12           #skew:J
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 546
    .restart local v9       #isRtc:Z
    :cond_5
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 557
    .restart local v10       #offset:J
    .restart local v12       #skew:J
    :cond_6
    move-wide/from16 v4, p2

    .restart local v4       #adjustedTriggerTime:J
    goto :goto_3
.end method

.method public setPhbEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1201
    :try_start_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhbEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    if-ne v0, p1, :cond_1

    .line 1203
    monitor-exit v1

    .line 1220
    :goto_0
    return-void

    .line 1206
    :cond_1
    if-eqz p1, :cond_3

    .line 1207
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-nez v0, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addPendingWakeupAlarms(Ljava/util/ArrayList;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addPendingWakeupAlarms(Ljava/util/ArrayList;)V

    .line 1212
    :cond_2
    const-string v0, "persist.sys.phb.enable"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getPhbState()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    .line 1219
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1215
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->removePendingWakeupAlarms()V

    .line 1216
    const-string v0, "persist.sys.phb.enable"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 26
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 349
    if-nez p6, :cond_0

    .line 350
    const-string v2, "AlarmManager"

    const-string v3, "set/setRepeating ignored because there is no intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_0
    return-void

    .line 353
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 354
    :try_start_0
    new-instance v8, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v8}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 355
    .local v8, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    move/from16 v0, p1

    iput v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 356
    move-wide/from16 v0, p2

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 357
    move-wide/from16 v0, p4

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 358
    move-object/from16 v0, p6

    iput-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "td_alarm_mode"

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 380
    .local v11, db_alarm_mode:I
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v19

    .line 381
    .local v19, tPname:Ljava/lang/String;
    const/4 v14, 0x0

    .line 382
    .local v14, isSave:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->isSysApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v11, :cond_a

    .line 406
    :cond_1
    :goto_1
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v2, :cond_2

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 408
    :cond_2
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 409
    .local v21, time:Landroid/text/format/Time;
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_f

    .line 410
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 415
    :goto_2
    const-string v2, "%Y %b %d %H:%M:%S %z"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 416
    .local v22, timeStr:Ljava/lang/String;
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Wakeup alarm["

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, "] "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, " {"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, "} ("

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, ") repeatInterval: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v21           #time:Landroid/text/format/Time;
    .end local v22           #timeStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 423
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mBackUpAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_4
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "set: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v24, 0x0

    cmp-long v2, v2, v24

    if-nez v2, :cond_7

    .line 428
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 429
    .local v9, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_7

    .line 431
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 432
    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v10, 0x0

    .line 433
    .local v10, count:I
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v16

    .line 434
    .local v16, name:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 435
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/AlarmManagerService$Alarm;

    .line 436
    .local v20, tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 437
    add-int/lit8 v10, v10, 0x1

    .line 439
    :cond_6
    const/16 v2, 0x96

    if-le v10, v2, :cond_10

    .line 441
    new-instance v13, Landroid/content/Intent;

    const-string v2, "huawei.intent.action.APP_HAS_TOO_MANY_ALARM"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "pkg"

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v2, "forceKill"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 445
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sendBroadcast: package name = "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, ", force kill = true"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v9           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v10           #count:I
    .end local v13           #intent:Landroid/content/Intent;
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v16           #name:Ljava/lang/String;
    .end local v20           #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 462
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v18

    .line 463
    .local v18, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 464
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 465
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AlarmManagerService$Alarm;

    .line 467
    .local v17, pendingAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_8

    .line 470
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_9
    monitor-exit v23

    goto/16 :goto_0

    .line 520
    .end local v8           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11           #db_alarm_mode:I
    .end local v14           #isSave:Z
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v17           #pendingAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v18           #pkgName:Ljava/lang/String;
    .end local v19           #tPname:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 384
    .restart local v8       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v11       #db_alarm_mode:I
    .restart local v14       #isSave:Z
    .restart local v19       #tPname:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x1

    if-ne v11, v2, :cond_c

    .line 385
    :try_start_1
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_b

    .line 386
    const/4 v2, 0x1

    iput v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 387
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 388
    :cond_b
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 389
    const/4 v2, 0x3

    iput v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 390
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 392
    :cond_c
    const/4 v2, 0x2

    if-ne v11, v2, :cond_1

    .line 393
    const-string v2, "true"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/provider/Settings$Alarm;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_e

    .line 395
    const/4 v2, 0x1

    iput v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 396
    const/4 v14, 0x1

    .line 401
    :cond_d
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 397
    :cond_e
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 398
    const/4 v2, 0x3

    iput v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 399
    const/4 v14, 0x1

    goto :goto_4

    .line 412
    .restart local v21       #time:Landroid/text/format/Time;
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v24, v0

    add-long v2, v2, v24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v2, v2, v24

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_2

    .line 447
    .end local v21           #time:Landroid/text/format/Time;
    .restart local v9       #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v10       #count:I
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v16       #name:Ljava/lang/String;
    .restart local v20       #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_10
    const/16 v2, 0x64

    if-ne v10, v2, :cond_5

    .line 449
    new-instance v13, Landroid/content/Intent;

    const-string v2, "huawei.intent.action.APP_HAS_TOO_MANY_ALARM"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v2, "pkg"

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v2, "forceKill"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sendBroadcast: package name = "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, ", force kill = false"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 479
    .end local v9           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v10           #count:I
    .end local v13           #intent:Landroid/content/Intent;
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v16           #name:Ljava/lang/String;
    .end local v20           #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_11
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    if-eqz v2, :cond_14

    .line 483
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_14

    :cond_12
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->isTargetAlarmMatched(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 487
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v2, :cond_13

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "add "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, " to mPendingWakeupAlarms when setRepeating"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    monitor-exit v23

    goto/16 :goto_0

    .line 494
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v12

    .line 495
    .local v12, index:I
    if-nez v12, :cond_16

    .line 496
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 520
    :cond_15
    :goto_5
    monitor-exit v23

    goto/16 :goto_0

    .line 500
    :cond_16
    move-object/from16 v0, p0

    invoke-static {v0, v8, v12}, Lcom/android/server/AlarmManagerService$BaiduInjector;->setLockAgain(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;I)V

    const-string v2, "true"

    const-string v3, "ro.poweroff_alarm"

    const-string v24, "true"

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_15

    const-string v2, "com.android.deskclock"

    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 506
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v24, 0x0

    cmp-long v2, v2, v24

    if-gez v2, :cond_17

    .line 507
    const-wide/16 v4, 0x0

    .line 508
    .local v4, alarmSeconds:J
    const-wide/16 v6, 0x0

    .line 515
    .local v6, alarmNanoseconds:J
    :goto_6
    const-string v2, "AlarmManager"

    const-string v3, "setRepeating()->set the deskclock alarm to Arm9 RTC"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setRTC(IJJ)V

    goto :goto_5

    .line 510
    .end local v4           #alarmSeconds:J
    .end local v6           #alarmNanoseconds:J
    :cond_17
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v24, 0x3e8

    div-long v4, v2, v24

    .line 511
    .restart local v4       #alarmSeconds:J
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v24, 0x3e8

    rem-long v2, v2, v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v24, 0x3e8

    mul-long v2, v2, v24

    const-wide/16 v24, 0x3e8

    mul-long v6, v2, v24

    .restart local v6       #alarmNanoseconds:J
    goto :goto_6
.end method

.method public setTime(J)V
    .locals 3
    .parameter "millis"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 572
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 10
    .parameter "tz"

    .prologue
    .line 575
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SET_TIME_ZONE"

    const-string v9, "setTimeZone"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 581
    .local v3, oldId:J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 611
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    :goto_0
    return-void

    .line 582
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 585
    .local v6, zone:Ljava/util/TimeZone;
    const/4 v5, 0x0

    .line 586
    .local v5, timeZoneWasChanged:Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 587
    :try_start_2
    const-string v7, "persist.sys.timezone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, current:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 590
    :cond_1
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timezone changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v5, 0x1

    .line 593
    const-string v7, "persist.sys.timezone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 599
    .local v1, gmtOffset:I
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v8, 0xea60

    div-int v8, v1, v8

    neg-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 600
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 604
    if-eqz v5, :cond_3

    .line 605
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    const-string v7, "time-zone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 611
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 600
    .end local v0           #current:Ljava/lang/String;
    .end local v1           #gmtOffset:I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 611
    .end local v5           #timeZoneWasChanged:Z
    .end local v6           #zone:Ljava/util/TimeZone;
    :catchall_1
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 1966
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 1968
    .local v0, uid:I
    if-ltz v0, :cond_0

    .line 1969
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    .end local v0           #uid:I
    :goto_0
    return-void

    .line 1972
    :catch_0
    move-exception v1

    .line 1976
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public timeToNextAlarm()J
    .locals 9

    .prologue
    .line 983
    const-wide v3, 0x7fffffffffffffffL

    .line 984
    .local v3, nextAlarm:J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 985
    const/4 v2, 0x0

    .line 986
    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 987
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 988
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 989
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 990
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v7, v3

    if-gez v5, :cond_0

    .line 991
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 986
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 995
    .end local v1           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    monitor-exit v6

    .line 996
    return-wide v3

    .line 995
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method static synthetic access$invoke-setLocked-2e1e0e(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    return-void
.end method

.method static synthetic access$invoke-triggerAlarmsLockedBaidu-bb488a(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLockedBaidu(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-void
.end method

.method private setBaidu(IIJJ)V
    .locals 10
    .parameter "fd"
    .parameter "type"
    .parameter "seconds"
    .parameter "nanoseconds"

    .prologue
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/4 v9, 0x1

    .local v9, isWakeup:Z
    :goto_1
    if-eqz v9, :cond_3

    const/4 v8, 0x0

    .local v8, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    packed-switch p2, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4, v8}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;IJLjava/util/ArrayList;)J

    move-result-wide v6

    .local v6, addInterval:J
    add-long v2, p3, v6

    move v0, p1

    move v1, p2

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto :goto_0

    .end local v6           #addInterval:J
    .end local v8           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9           #isWakeup:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .restart local v8       #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v9       #isWakeup:Z
    :pswitch_1
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_2

    :pswitch_2
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_2

    .end local v8           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_3
    invoke-static/range {p1 .. p6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private triggerAlarmsLockedBaidu(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 20
    .parameter
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct/range {p0 .. p4}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v13, -0x1

    .local v13, type:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .local v3, first:Lcom/android/server/AlarmManagerService$Alarm;
    iget v13, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .end local v3           #first:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    const/4 v14, 0x3

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v5, v14, v16

    .local v5, interval:J
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v5, v6}, Lcom/android/server/AlarmManagerService$BaiduInjector;->next(JJ)J

    move-result-wide v9

    .local v9, next:J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, repeats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .local v2, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v14, v14, v9

    if-lez v14, :cond_5

    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .restart local v2       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    iput-wide v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14, v2}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v4, 0x0

    .local v4, hasFound:Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .local v12, temp:Lcom/android/server/AlarmManagerService$Alarm;
    if-ne v2, v12, :cond_6

    const/4 v4, 0x1

    .end local v12           #temp:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    if-nez v4, :cond_8

    const/4 v14, 0x1

    iput v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    :cond_8
    iget-wide v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_9

    iget v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v14, v14

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v16, v0

    sub-long v16, v9, v16

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    long-to-int v14, v14

    iput v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    :cond_9
    if-nez v4, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    iget-wide v14, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v4           #hasFound:Z
    .end local v8           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto/16 :goto_0
.end method
