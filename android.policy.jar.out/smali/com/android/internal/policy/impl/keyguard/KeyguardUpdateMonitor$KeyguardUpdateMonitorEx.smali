.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardUpdateMonitorEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;
    }
.end annotation


# static fields
.field private static final MSG_INTENT_VALUE_ICC_LOADED:I = 0x3e9


# instance fields
.field private mIccLoadedHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;

.field private final mSimStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 3
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->mSimStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->initHandler()V

    .line 1097
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, aSimStateChangedFilter:Landroid/content/IntentFilter;
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->mSimStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1099
    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->mIccLoadedHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->handleIccLocked()V

    return-void
.end method

.method private handleIccLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1126
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    .local v2, operator:Ljava/lang/String;
    invoke-static {}, Ljava/util/CarrierWeekInfoConstants;->getInstance()Ljava/util/CarrierWeekInfoConstants;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/CarrierWeekInfoConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1129
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/system/"

    const-string v7, "carrierinfo.prop"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    .local v0, carrierinfoFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1132
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_0
    invoke-virtual {v0, v9, v8}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v9, v8}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1138
    :cond_0
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "set CarrierPropFileInfoConstants.CARRIERINFO_FILE readable or writable error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_1
    const/4 v3, 0x0

    .line 1144
    .local v3, os:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1146
    .local v5, prop:Ljava/util/Properties;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1147
    .end local v3           #os:Ljava/io/FileOutputStream;
    .local v4, os:Ljava/io/FileOutputStream;
    :try_start_2
    const-string v6, "carrier"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1148
    const-string v6, "setFirstDayOfWeek"

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1154
    if-eqz v4, :cond_2

    .line 1156
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1163
    .end local v0           #carrierinfoFile:Ljava/io/File;
    .end local v4           #os:Ljava/io/FileOutputStream;
    .end local v5           #prop:Ljava/util/Properties;
    :cond_2
    :goto_1
    return-void

    .line 1133
    .restart local v0       #carrierinfoFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1134
    .local v1, e:Ljava/io/IOException;
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "createcarrierinfo.propfailed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    .restart local v5       #prop:Ljava/util/Properties;
    :catch_1
    move-exception v1

    .line 1158
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "close error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1149
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 1150
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "/data/system/not found"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1154
    if-eqz v3, :cond_2

    .line 1156
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1157
    :catch_3
    move-exception v1

    .line 1158
    .local v1, e:Ljava/io/IOException;
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "close error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1151
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 1152
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "IO error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1154
    if-eqz v3, :cond_2

    .line 1156
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 1157
    :catch_5
    move-exception v1

    .line 1158
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "close error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1154
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_3

    .line 1156
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1159
    :cond_3
    :goto_5
    throw v6

    .line 1157
    :catch_6
    move-exception v1

    .line 1158
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "KeyguardUpdateMonitor"

    const-string v8, "close error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1154
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1151
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1149
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public initHandler()V
    .locals 2

    .prologue
    .line 1102
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->mIccLoadedHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;

    .line 1103
    return-void
.end method
