.class public Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcastReceiver.java"


# static fields
.field private static mNowTime:Ljava/lang/Long;

.field private static mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;


# instance fields
.field private TAG:Ljava/lang/String;

.field private dialog_choice:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerWarningParameterInited:Z

.field private power_notification:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    const-string v0, "BootBroadcastReceiver"

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mPowerWarningParameterInited:Z

    .line 55
    new-instance v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;-><init>(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->notificationShowJudger()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->handlePowerConsumeAPPs(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->handleTakingWakeLockAPPs(Landroid/os/Bundle;)V

    return-void
.end method

.method private checkIfNeedKiller(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method private checkIfNeedNotifier(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 421
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v2

    .line 426
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 428
    .local v1, ignore:Ljava/lang/Integer;
    if-nez v1, :cond_2

    move v2, v3

    .line 429
    goto :goto_0

    .line 431
    :cond_2
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PACKAGE_FIELD_IGNORE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v3, :cond_0

    .line 439
    .end local v1           #ignore:Ljava/lang/Integer;
    :goto_1
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->checkIfNeedKiller(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 442
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1
.end method

.method private handlePowerConsumeAPPs(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, mMaxConsumptionAppUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 293
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 295
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v5, notifyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    .local v0, appUid:I
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, pkaName:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, idx:I
    :goto_0
    array-length v11, v6

    if-ge v4, v11, :cond_0

    .line 301
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "xxxx Max Consumption App ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v6, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    aget-object v11, v6, v4

    invoke-direct {p0, v11}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->checkIfNeedNotifier(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 304
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyList add ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v6, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    aget-object v11, v6, v4

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :try_start_0
    const-string v11, "pkgname"

    aget-object v12, v6, v4

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v11, "isrogue"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v11, "ignore"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v11, "clear"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v11, "presetblackapp"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    aget-object v12, v6, v4

    invoke-static {v11, v12, v10}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertRogue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 314
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, e:Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1

    .line 322
    .end local v0           #appUid:I
    .end local v1           #e:Landroid/database/SQLException;
    .end local v4           #idx:I
    .end local v6           #pkaName:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 348
    :cond_3
    :goto_2
    return-void

    .line 326
    :cond_4
    new-instance v11, Lcom/huawei/android/hwpowermanager/UserNotifier;

    iget-object v12, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/huawei/android/hwpowermanager/UserNotifier;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    .line 328
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.huawei.android.hwpowermanager.PowerConsumeBackgroundActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 331
    .local v9, saIntent:Landroid/content/Intent;
    sget-object v11, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-virtual {v11, v5}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setNotificaitonData(Ljava/util/ArrayList;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setContentIntent(Landroid/content/Intent;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setBroadcastReceiver(Ljava/lang/Class;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/android/hwpowermanager/UserNotifier;->createNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/android/hwpowermanager/UserNotifier;->doNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;

    .line 337
    const-string v11, "lastNotifyTime"

    sget-object v12, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v2, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Power consume notification lastNotifyTime is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 343
    .local v7, pkg:Ljava/lang/String;
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v12, "BgPower"

    invoke-static {v11, v7, v12}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->logHighPowerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 345
    .end local v7           #pkg:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 346
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private handleTakingWakeLockAPPs(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 351
    const-string v5, "pkgName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, pkgName:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PG_FOUND_WASTE_POWER_APP received who is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0, v2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->checkIfNeedNotifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    new-instance v5, Lcom/huawei/android/hwpowermanager/UserNotifier;

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/huawei/android/hwpowermanager/UserNotifier;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.huawei.android.hwpowermanager.PowerConsumeBackgroundActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 359
    .local v3, saIntent:Landroid/content/Intent;
    const-string v5, "pkgName"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v5, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-virtual {v5, v0}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setNotificaitonData(Ljava/util/ArrayList;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setContentIntent(Landroid/content/Intent;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setBroadcastReceiver(Ljava/lang/Class;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/UserNotifier;->createNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/UserNotifier;->doNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;

    .line 368
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "pkgname"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v5, "isrogue"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string v5, "ignore"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v5, "clear"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v5, "presetblackapp"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertRogue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 376
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 378
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v6, "Wakelock"

    invoke-static {v5, v2, v6}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->logHighPowerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #saIntent:Landroid/content/Intent;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 379
    .restart local v0       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #saIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 382
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #saIntent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, v2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->checkIfNeedKiller(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .restart local v0       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->forceStopPackageAndSyncSaving(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private makeSureDBReady(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 195
    new-instance v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;-><init>(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;->start()V

    .line 212
    return-void
.end method

.method private notificationShowJudger()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v9, 0x0

    .line 217
    .local v9, mMaxConsumptionAppUid:I
    const-wide/16 v7, 0x0

    .line 220
    .local v7, mMaxConsumptionAppPower:D
    new-instance v14, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->computerPowerBgConsumption()Ljava/util/ArrayList;

    move-result-object v2

    .line 221
    .local v2, appConsumption:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v10, needNotifyUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    .line 223
    .local v12, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    const-string v15, "lastNotifyTime"

    const-wide/16 v16, 0x0

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 224
    .local v6, mLastNotifyTime:Ljava/lang/Long;
    const-wide/32 v14, 0xea60

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMsgSendInterval()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 225
    .local v5, mIntervalTime:Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    sput-object v14, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 228
    .local v11, newNotifyAppsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v15, "======  notificationShowJudger begin ======="

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "new appConsumption size is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "old appConsumption is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v15, "interval_time_unit is 60000"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "intervalHour is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMsgSendInterval()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mAhValue is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getHigh_level_standard()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mNowTime is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mLastNotifyTime is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .line 242
    .local v13, uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    const/4 v4, 0x0

    .line 244
    .local v4, isOldContain:Z
    if-eqz v12, :cond_1

    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 245
    const/4 v4, 0x1

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tempMap contains "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "uap.uid is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "uap.power is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isOldContain is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "is gap time allowed ? "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v14, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v17, v17, v19

    const-wide/32 v19, 0xea60

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMsgSendInterval()I

    move-result v14

    int-to-long v0, v14

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    cmp-long v14, v17, v19

    if-lez v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-wide v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getHigh_level_standard()I

    move-result v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_2

    .line 259
    sget-object v14, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 260
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 261
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v15, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    double-to-float v15, v15

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 272
    :cond_2
    iget-wide v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getDangerous_level_standard()I

    move-result v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_0

    .line 273
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 274
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v15, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    double-to-float v15, v15

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 254
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 280
    .end local v4           #isOldContain:Z
    .end local v13           #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_5

    .line 281
    const-string v14, "lastNotifyTime"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide v0, v15

    invoke-interface {v11, v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 284
    :cond_5
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    return-object v10
.end method

.method private onAction(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 466
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei.intent.action.NOTIFICATION_ACTION_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pkgName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v4, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 474
    :cond_0
    :goto_0
    sget-object v1, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/UserNotifier;->destoryNotification()V

    .line 475
    return-void

    .line 469
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei.intent.action.NOTIFICATION_ACTION_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->forceStopPackageAndSyncSaving(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private onNotifierReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, action:Ljava/lang/String;
    const-string v1, "huawei.intent.action.NOTIFICATION_DELETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    sget-object v1, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/UserNotifier;->destoryNotification()V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    const-string v1, "huawei.intent.action.NOTIFICATION_ACTION_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "huawei.intent.action.NOTIFICATION_ACTION_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    :cond_2
    invoke-direct {p0, p2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->onAction(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 84
    const-string v8, "power_notification"

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    .line 86
    const-string v8, "dialog_choice"

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->dialog_choice:Landroid/content/SharedPreferences;

    .line 90
    iget-boolean v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mPowerWarningParameterInited:Z

    if-nez v8, :cond_0

    .line 91
    invoke-static {p1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->initalPowerWarningParameter(Landroid/content/Context;)V

    .line 92
    iput-boolean v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mPowerWarningParameterInited:Z

    .line 95
    :cond_0
    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v9, "ACTION_POWER_CONNECTED Received !"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 103
    invoke-static {p1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v4

    .line 104
    .local v4, mChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    invoke-static {p1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->readSaveMode()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->change(I)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setPowerNotificationAlarmTime(Landroid/content/Context;J)V

    .line 107
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->makeSureDBReady(Landroid/content/Context;)V

    .line 109
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->dialog_choice:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 111
    .local v6, newDialogShowEditor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "DailogUserChoice"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    .end local v4           #mChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    .end local v6           #newDialogShowEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v8, "android.intent.action.POWER_STATISTIC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 116
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 118
    .local v5, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    .end local v5           #msg:Landroid/os/Message;
    :cond_3
    const-string v8, "huawei.intent.action.PG_FOUND_WASTE_POWER_APP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 122
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 124
    .restart local v5       #msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 125
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    .end local v5           #msg:Landroid/os/Message;
    :cond_4
    const-string v8, "huawei.intent.action.POWER_DEPLOY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 128
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v9, "ACTION_POWER_DEPLOY Received !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v8, "packageName"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, pkgname:Ljava/lang/String;
    const-string v8, "notAllowedAutoClear"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 131
    .local v1, allowedAutoClear:Z
    const-string v8, "allowedAutoLunch"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 132
    .local v3, isAllowedLunch:Z
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->updateProtectedAppsDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 134
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllowedLunch is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-nez v3, :cond_7

    .line 137
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    invoke-static {v8, v9, v7, v11}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertToDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 143
    .end local v1           #allowedAutoClear:Z
    .end local v3           #isAllowedLunch:Z
    .end local v7           #pkgname:Ljava/lang/String;
    :cond_5
    :goto_0
    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 144
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->cancelNotification(Landroid/content/Context;)V

    .line 170
    :cond_6
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->onNotifierReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    return-void

    .line 140
    .restart local v1       #allowedAutoClear:Z
    .restart local v3       #isAllowedLunch:Z
    .restart local v7       #pkgname:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    invoke-static {v8, v9, v7}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->deleteFromDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v1           #allowedAutoClear:Z
    .end local v3           #isAllowedLunch:Z
    .end local v7           #pkgname:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 172
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
