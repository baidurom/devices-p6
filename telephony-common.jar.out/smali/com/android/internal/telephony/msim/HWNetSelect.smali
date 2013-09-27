.class public Lcom/android/internal/telephony/msim/HWNetSelect;
.super Ljava/lang/Object;
.source "HWNetSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;
    }
.end annotation


# static fields
.field private static final ANDROID_LAUNCHER_ACTIVITY:Ljava/lang/String; = "com.android.launcher2.Launcher"

.field private static final ANDROID_LAUNCHER_PACKAGE:Ljava/lang/String; = "com.android.launcher"

.field private static final DUALCARD_CLASS:Ljava/lang/String; = "com.huawei.android.dsdscardmanager.HWCardManagerActivity"

.field private static final DUALCARD_CLASS_TAB:Ljava/lang/String; = "com.huawei.android.dsdscardmanager.HWCardManagerTabActivity"

.field private static final DUALCARD_PACKAGE:Ljava/lang/String; = "com.huawei.android.dsdscardmanager"

.field public static final DUAL_CARD_MODE_CDMA:I = 0x0

.field private static final HW_LAUNCHER_ACTIVITY:Ljava/lang/String; = "com.huawei.android.launcher.Launcher"

.field private static final HW_LAUNCHER_PACKAGE:Ljava/lang/String; = "com.huawei.android.launcher"

.field private static final INTERVAL_TO_CLOSE_DSDS:I = 0x3e8

#the value of this static final field might be set in the static constructor
.field private static final IS_CHINA_TELECOM_OPTA_OPTB:Z = false

.field public static final MODEM_CDMA:Ljava/lang/String; = "MODEM_CDMA"

.field public static final MODEM_GSM:Ljava/lang/String; = "MODEM_GSM"

.field private static final NUM_SUBSCRIPTIONS:I = 0x2

.field public static TIMETOCLOSECARDMANAGER:Ljava/lang/String; = null

.field private static final TIME_TO_CLOSE_DSDS:I = 0x4e20

.field private static final TY_LAUNCHER_ACTIVITY:Ljava/lang/String; = "telecom.mdesk.Launcher"

.field private static final TY_LAUNCHER_PACKAGE:Ljava/lang/String; = "telecom.mdesk"

.field private static mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;


# instance fields
.field private final EVENT_SWITCH_MTK_SIM_DONE:I

.field private LOG_TAG:Ljava/lang/String;

.field private countdown:Landroid/os/CountDownTimer;

.field private dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

.field private firstLauncher:Z

.field private mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHuaweiDSDA:Z

.field private mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mcardIndex:I

.field private mlastmIccIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    .line 67
    const-string v0, "ro.config.hw_opta"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "92"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.config.hw_optb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/msim/HWNetSelect;->IS_CHINA_TELECOM_OPTA_OPTB:Z

    .line 71
    const-string v0, "TIMETOCLOSECARDMANAGER"

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->TIMETOCLOSECARDMANAGER:Ljava/lang/String;

    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, "HWNetSelect"

    iput-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    .line 39
    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 40
    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 41
    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->EVENT_SWITCH_MTK_SIM_DONE:I

    .line 49
    const-string v1, "ro.config.hw_dsda"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHuaweiDSDA:Z

    .line 62
    const-string v1, "persist.radio.1sthwlauncher"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->firstLauncher:Z

    .line 73
    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UNKNOWN:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    .line 500
    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/HWNetSelect$4;-><init>(Lcom/android/internal/telephony/msim/HWNetSelect;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;

    .line 87
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->firstLauncher:Z

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->createThreadToListenLauncher()V

    .line 91
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/msim/HWNetSelect;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/msim/HWNetSelect;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/msim/HWNetSelect;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/HWNetSelect;->promptUserSubscription(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/internal/telephony/msim/HWNetSelect;->IS_CHINA_TELECOM_OPTA_OPTB:Z

    return v0
.end method

.method private createThreadToListenLauncher()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/msim/HWNetSelect$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/msim/HWNetSelect$2;-><init>(Lcom/android/internal/telephony/msim/HWNetSelect;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method

.method private createThreadToPrompt()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createThreadToPrompt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/msim/HWNetSelect$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/msim/HWNetSelect$3;-><init>(Lcom/android/internal/telephony/msim/HWNetSelect;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/HWNetSelect;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/msim/HWNetSelect;
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/HWNetSelect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    return-object v0
.end method

.method private isCardChanged()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    const/4 v1, 0x1

    .line 399
    .local v1, result:Z
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v4

    if-nez v4, :cond_3

    .line 400
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    move v1, v2

    .line 424
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCardChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return v1

    :cond_2
    move v1, v3

    .line 400
    goto :goto_0

    .line 405
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v4, v2

    .line 406
    .local v0, cardSub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v0, :cond_5

    .line 407
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    .line 409
    :cond_5
    iget-object v4, v0, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 410
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    .line 413
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcardIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cardSub.iccId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mlastmIccIds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v4, v0, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 416
    :goto_2
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 415
    goto :goto_2

    .line 419
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_8

    move v1, v2

    .line 420
    :goto_3
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 419
    goto :goto_3
.end method

.method private isSlot0isGsm()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isSlot0isGsm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-nez v3, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v2

    .line 342
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 343
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v3, v0

    .line 344
    .local v1, userSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSlot0isGsm userSub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz v1, :cond_0

    .line 349
    iget v3, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v4, "USIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 342
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isUserPrefEmpty()Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 357
    const/4 v1, 0x0

    .line 360
    .local v1, ret:Z
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-nez v3, :cond_1

    .line 361
    const/4 v1, 0x1

    .line 388
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserPrefIsEmpity ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v1

    .line 365
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v3, v0

    .line 368
    .local v2, userSub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v2, :cond_2

    .line 369
    const/4 v1, 0x1

    .line 370
    goto :goto_0

    .line 375
    :cond_2
    iget v3, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 381
    const/4 v1, 0x1

    .line 382
    goto :goto_0
.end method

.method private isUserPrefInvalid(I)Z
    .locals 4
    .parameter "subId"

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v2, p1

    .line 324
    .local v0, userSub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v1

    .line 325
    :cond_1
    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-eq v2, v3, :cond_0

    .line 330
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needChangeMode()Z
    .locals 4

    .prologue
    .line 313
    const/4 v0, 0x1

    .line 315
    .local v0, result:Z
    iget v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/HWNetSelect;->isUserPrefInvalid(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->isCardChanged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needChangeMode, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v0
.end method

.method private promptUserSubscription(Z)V
    .locals 3
    .parameter "bNeedTimer"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v2, "promptUserSubscription"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    sget-boolean v1, Lcom/android/internal/telephony/msim/HWNetSelect;->IS_CHINA_TELECOM_OPTA_OPTB:Z

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "com.huawei.android.dsdscardmanager"

    const-string v2, "com.huawei.android.dsdscardmanager.HWCardManagerTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :goto_0
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    const-string v1, "dualmgrstartcause"

    const-string v2, "framework"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->setTimerToCloseCardManager()V

    .line 130
    :cond_0
    return-void

    .line 116
    :cond_1
    const-string v1, "com.huawei.android.dsdscardmanager"

    const-string v2, "com.huawei.android.dsdscardmanager.HWCardManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public cancelTheTimer()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelTheTimer---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 157
    :cond_0
    return-void
.end method

.method public matchSubscriptions(Lcom/android/internal/telephony/msim/SubscriptionData;[Lcom/android/internal/telephony/msim/SubscriptionData;[Ljava/lang/String;I)Z
    .locals 8
    .parameter "UserPrefSubs"
    .parameter "CardSubData"
    .parameter "lastmIccIds"
    .parameter "cardIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 214
    const/4 v1, 0x1

    .line 216
    .local v1, result:Z
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "matchSubscriptions cardIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UserPrefSubs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastmIccIds card0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", card1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 219
    invoke-virtual {p2}, [Lcom/android/internal/telephony/msim/SubscriptionData;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/telephony/msim/SubscriptionData;

    check-cast v3, [Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 220
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    .line 221
    iput p4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    .line 224
    const-string v3, "cdma_gsm"

    const-string v5, "ro.config.dsds_mode"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    .line 236
    :goto_0
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v0

    .line 239
    .local v0, dualModeState:I
    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v3, v5, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHuaweiDSDA:Z

    if-eqz v3, :cond_6

    if-eq v4, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_6

    .line 243
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v5, "gsm mode, DSDA!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getAdjustPropMtkSlotId()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->setDefaultSubscriptions()V

    .line 247
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setAdjustPropMtkSlotId(Z)V

    move v3, v4

    .line 306
    :goto_1
    return v3

    .line 226
    .end local v0           #dualModeState:I
    :cond_1
    const-string v3, "umts_gsm"

    const-string v5, "ro.config.dsds_mode"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    goto :goto_0

    .line 228
    :cond_2
    const-string v3, "tdscdma_gsm"

    const-string v5, "ro.config.dsds_mode"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->TDSCDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    goto :goto_0

    .line 231
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UNKNOWN:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    goto :goto_0

    .line 252
    .restart local v0       #dualModeState:I
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->needChangeMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 253
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Dual C card changed, will restart rilds!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static {v3, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 256
    .local v2, switchMtkSimMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->switchMtkSimTo(ILandroid/os/Message;)V

    .end local v2           #switchMtkSimMsg:Landroid/os/Message;
    :goto_2
    move v3, v4

    .line 264
    goto :goto_1

    .line 259
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->setDefaultSubscriptions()V

    .line 261
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/HWNetSelect;->promptUserSubscription(Z)V

    goto :goto_2

    .line 270
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->isCardChanged()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->isUserPrefEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 271
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    if-nez v3, :cond_8

    .line 274
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setCCardChanged(Z)V

    .line 277
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->setDefaultSubscriptions()V

    .line 279
    iget v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    if-nez v3, :cond_9

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getAdjustPropMtkSlotId()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setAdjustPropMtkSlotId(Z)V

    :cond_9
    :goto_3
    move v3, v1

    .line 306
    goto/16 :goto_1

    .line 286
    :cond_a
    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->firstLauncher:Z

    if-eqz v3, :cond_b

    .line 287
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->firstLauncher:Z

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->createThreadToPrompt()V

    goto :goto_3

    .line 290
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/HWNetSelect;->promptUserSubscription(Z)V

    goto :goto_3

    .line 297
    :cond_c
    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v3, v5, :cond_d

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->isSlot0isGsm()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 299
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/HWNetSelect;->promptUserSubscription(Z)V

    .line 301
    const/4 v1, 0x0

    goto :goto_3

    .line 303
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v4, "3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setDefaultSubscriptions()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 429
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v5, "setDefaultSubscriptions"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v3, Lcom/android/internal/telephony/msim/SubscriptionData;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    .line 432
    .local v3, matchedSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    if-nez v4, :cond_1

    .line 433
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v5, "setDefaultSubscriptions fail!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v7

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    if-nez v4, :cond_3

    .line 439
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCardSubData[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 441
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v2

    iget-object v0, v4, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 443
    .local v0, appType:Ljava/lang/String;
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iput v7, v4, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 444
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iput v7, v4, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 445
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 446
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 447
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    .line 448
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 449
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 451
    sget-object v4, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v4, v5, :cond_7

    const-string v4, "RUIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CSIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 452
    :cond_2
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iput v9, v4, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 453
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iput v2, v4, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 465
    .end local v0           #appType:Ljava/lang/String;
    .end local v2           #i:I
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v8

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    if-ne v4, v8, :cond_6

    .line 466
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCardSubData[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v4

    if-ne v4, v8, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    if-nez v4, :cond_6

    .line 468
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    iput v8, v4, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 469
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    iput v7, v4, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 470
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    iput v9, v4, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 471
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    iput v8, v4, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 472
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 473
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 474
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    .line 475
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 476
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 479
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v1

    .line 480
    .local v1, dualModeState:I
    sget-object v4, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHuaweiDSDA:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getAdjustPropMtkSlotId()Z

    move-result v4

    if-nez v4, :cond_6

    if-eq v8, v1, :cond_4

    const/4 v4, 0x3

    if-ne v4, v1, :cond_6

    .line 486
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v4, v5, :cond_5

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_6

    .line 488
    :cond_5
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v8

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 496
    .end local v1           #dualModeState:I
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDefaultSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;I)V

    goto/16 :goto_0

    .line 456
    .restart local v0       #appType:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v4, v5, :cond_9

    const-string v4, "SIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "USIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 457
    :cond_8
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iput v2, v4, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 458
    iget-object v4, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iput v9, v4, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto/16 :goto_2

    .line 440
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public setTimerToCloseCardManager()V
    .locals 6

    .prologue
    .line 133
    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect$1;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/msim/HWNetSelect$1;-><init>(Lcom/android/internal/telephony/msim/HWNetSelect;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 146
    return-void
.end method
