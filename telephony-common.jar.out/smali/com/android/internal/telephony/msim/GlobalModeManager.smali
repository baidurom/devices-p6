.class public final Lcom/android/internal/telephony/msim/GlobalModeManager;
.super Ljava/lang/Object;
.source "GlobalModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/GlobalModeManager$2;,
        Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;,
        Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;,
        Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;,
        Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_TIME:Z = true

.field public static final DEFAULT_MCC:Ljava/lang/String; = "999"

.field public static final DIALOG_ID_CHOOSE_DUALMODE:Ljava/lang/String; = "DualMode"

.field public static final DIALOG_ID_CHOOSE_SELECTMODE:Ljava/lang/String; = "SelectMode"

.field public static final DIALOG_ID_SWITCHING_DUALMODE:Ljava/lang/String; = "SwithingDualMode"

.field public static final DIALOG_KEY:Ljava/lang/String; = "Dialog"

.field private static final EVENT_CDMA_LOST_TIMEOUT:I = 0x8

.field private static final EVENT_CDMA_MCC_CHANGED:I = 0x3

.field private static final EVENT_COPS_OBTAIN_TIMEOUT:I = 0x7

.field private static final EVENT_COUNT:I = 0x10

.field private static final EVENT_GSM1_LOST_TIMEOUT:I = 0x9

.field private static final EVENT_GSM_CALL_DISCONNECT:I = 0x5

.field private static final EVENT_GSM_COPS_COMPLETED:I = 0x6

.field private static final EVENT_GSM_MANUAL_SEARCH_TIMEOUT:I = 0xb

.field private static final EVENT_GSM_STATE_CHANGED:I = 0x4

.field private static final EVENT_SEARCH_T1_TIMEOUT:I = 0xa

.field private static final EVENT_SERVICE_CDMA_STATE_CHANGED:I = 0x1

.field private static final EVENT_SERVICE_GSM_STATE_CHANGED:I = 0x2

.field private static final EVENT_SUBSCRIPTION_CDMA_ACTIVATED:I = 0xc

.field private static final EVENT_SUBSCRIPTION_CDMA_DEACTIVATED:I = 0xd

.field private static final EVENT_SUBSCRIPTION_GSM_ACTIVATED:I = 0xe

.field private static final EVENT_SUBSCRIPTION_GSM_DEACTIVATED:I = 0xf

.field private static final EVENT_SWITCH_MTK_SIM_DONE:I = 0x0

.field private static final EVENT_UNKNOWN:I = 0x14

.field private static final FLAG_CDMA:I = 0x0

.field private static final FLAG_COUNT:I = 0x3

.field private static final FLAG_GSM1:I = 0x1

.field private static final FLAG_GSM_MANUAL:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final SLOT_1:Ljava/lang/String; = "SLOT1"

.field public static final SLOT_2:Ljava/lang/String; = "SLOT2"

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field private static sInstance:Lcom/android/internal/telephony/msim/GlobalModeManager;


# instance fields
.field private TIMER_CDMA_LOST_DURATION:I

.field private TIMER_GSM1_LOST_DURATION:I

.field private TIMER_GSM_MANUAL_SEARCH_DURATION:I

.field private TIMER_SEARCH_T1_DURATION:I

.field private bCdmaCardReady:Z

.field private bCdmaInitSearchDone:Z

.field private bCdmaModemOn:Z

.field private bDualModeCard:Z

.field private bGsmCardReady:Z

.field private bGsmInitSearchDone:Z

.field private bGsmModemOn:Z

.field private bRebootInProgress:Z

.field private bSwitchToCdmaAfterCallFinished:Z

.field private bSwitchToGsmAfterCallFinished:Z

.field private mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

.field private mCard1Type:I

.field private mCard2Type:I

.field private mCdmaPhone:Lcom/android/internal/telephony/Phone;

.field private mContext:Landroid/content/Context;

.field private mCurDualCardMode:I

.field private mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

.field private mGsmPhone:Lcom/android/internal/telephony/Phone;

.field mHandler:Landroid/os/Handler;

.field private mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

.field private mOldCdmaMcc:Ljava/lang/String;

.field private mOldGsmMcc:Ljava/lang/String;

.field private mPowerManger:Landroid/os/PowerManager;

.field private mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field private mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;

.field private mTempOldMcc:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager;->sInstance:Lcom/android/internal/telephony/msim/GlobalModeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "hw.cdma.lost.timout"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_CDMA_LOST_DURATION:I

    .line 94
    const-string v0, "hw.gsm.lost.timout"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_GSM1_LOST_DURATION:I

    .line 95
    const-string v0, "hw.t1.search.timout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_SEARCH_T1_DURATION:I

    .line 96
    const-string v0, "hw.gsm.manual.timout"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_GSM_MANUAL_SEARCH_DURATION:I

    .line 137
    iput-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mContext:Landroid/content/Context;

    .line 138
    iput-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    iput-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mPowerManger:Landroid/os/PowerManager;

    .line 140
    iput-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    .line 141
    iput-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    .line 142
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bRebootInProgress:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmCardReady:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaCardReady:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    .line 148
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    .line 149
    const-string v0, "999"

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    .line 150
    const-string v0, "999"

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    .line 151
    const-string v0, "999"

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mTempOldMcc:Ljava/lang/String;

    .line 152
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    .line 155
    iput v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    .line 156
    iput v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard1Type:I

    .line 157
    iput v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard2Type:I

    .line 158
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    .line 159
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 160
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 162
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    .line 213
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/GlobalModeManager$1;-><init>(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    .line 178
    return-void
.end method

.method private ClearTimer(II)V
    .locals 4
    .parameter "flag"
    .parameter "evt"

    .prologue
    const/16 v3, 0x14

    const/16 v2, 0xa

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClearTimer(): flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 985
    packed-switch p1, :pswitch_data_0

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 987
    :pswitch_0
    if-ne v3, p2, :cond_1

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 989
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-nez v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 998
    :pswitch_1
    if-ne v3, p2, :cond_2

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1000
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v0, v1, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1004
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1009
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private CloseCdmaModem()V
    .locals 1

    .prologue
    .line 1301
    const-string v0, "CloseCdmaModem(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1303
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1305
    const-string v0, "CloseCdmaModem(): CDMA Modem is closed secretly"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1314
    :cond_0
    :goto_0
    const-string v0, "CloseCdmaModem(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1315
    return-void

    .line 1311
    :cond_1
    const-string v0, "CloseCdmaModem(): CDMA modem is not on, do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private CloseGsmModem()V
    .locals 1

    .prologue
    .line 1318
    const-string v0, "CloseGsmModem(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1320
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1322
    const-string v0, "CloseGsmModem(): Gsm Modem is closed secretly"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1331
    :cond_0
    :goto_0
    const-string v0, "CloseGsmModem(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1332
    return-void

    .line 1328
    :cond_1
    const-string v0, "CloseGsmModem(): GSM modem is not on, do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ConvertCdmaStatus(I)Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;
    .locals 1
    .parameter "nState"

    .prologue
    .line 1139
    packed-switch p1, :pswitch_data_0

    .line 1146
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_UNKNOWN:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    :goto_0
    return-object v0

    .line 1140
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_NOT_REGISTERED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    goto :goto_0

    .line 1141
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_HOME:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    goto :goto_0

    .line 1142
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    goto :goto_0

    .line 1143
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_DENIED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    goto :goto_0

    .line 1144
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_UNKNOWN:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    goto :goto_0

    .line 1145
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_ROAMING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    goto :goto_0

    .line 1139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private ConvertGsmStatus(I)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    .locals 1
    .parameter "nState"

    .prologue
    .line 1151
    packed-switch p1, :pswitch_data_0

    .line 1160
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    :goto_0
    return-object v0

    .line 1152
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_OK:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    goto :goto_0

    .line 1153
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NO_CELL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    goto :goto_0

    .line 1154
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_LIMITED_SERVICE:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    goto :goto_0

    .line 1155
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_ERROR:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    goto :goto_0

    .line 1156
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_INVALID_SIM:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    goto :goto_0

    .line 1157
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_ATTEMPT_TO_UPDATE:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    goto :goto_0

    .line 1158
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    goto :goto_0

    .line 1159
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    goto :goto_0

    .line 1151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private DumpAll()V
    .locals 5

    .prologue
    .line 2211
    iget v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    packed-switch v3, :pswitch_data_0

    .line 2216
    const-string v2, "GSM_ONLY"

    .line 2221
    .local v2, sMode:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard1Type:I

    sparse-switch v3, :sswitch_data_0

    .line 2230
    const-string v0, "UNKNOWN_CARD"

    .line 2232
    .local v0, sCard1Type:Ljava/lang/String;
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard2Type:I

    sparse-switch v3, :sswitch_data_1

    .line 2241
    const-string v1, "UNKNOWN_CARD"

    .line 2244
    .local v1, sCard2Type:Ljava/lang/String;
    :goto_2
    const-string v3, "Dump START---------------------"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bRebootInProgress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bRebootInProgress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGsmModemOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bCdmaModemOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGsmCardReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmCardReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bCdmaCardReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaCardReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bSwitchToGsmAfterCallFinished = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bSwitchToCdmaAfterCallFinished = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bDualModeCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurDualCardMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCard1Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCard2Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurModemMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCRegStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRacStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bCdmaInitSearchDone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGsmInitSearchDone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2262
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    .line 2263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaServiceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2265
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    .line 2266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GsmServiceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2268
    :cond_1
    const-string v3, "Dump END---------------------"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2269
    return-void

    .line 2212
    .end local v0           #sCard1Type:Ljava/lang/String;
    .end local v1           #sCard2Type:Ljava/lang/String;
    .end local v2           #sMode:Ljava/lang/String;
    :pswitch_0
    const-string v2, "SubscriptionManager.DUAL_CARD_MODE_CDMA"

    .restart local v2       #sMode:Ljava/lang/String;
    goto/16 :goto_0

    .line 2213
    .end local v2           #sMode:Ljava/lang/String;
    :pswitch_1
    const-string v2, "SubscriptionManager.DUAL_CARD_MODE_GSM"

    .restart local v2       #sMode:Ljava/lang/String;
    goto/16 :goto_0

    .line 2214
    .end local v2           #sMode:Ljava/lang/String;
    :pswitch_2
    const-string v2, "SubscriptionManager.DUAL_CARD_MODE_GLOBAL_CDMA"

    .restart local v2       #sMode:Ljava/lang/String;
    goto/16 :goto_0

    .line 2215
    .end local v2           #sMode:Ljava/lang/String;
    :pswitch_3
    const-string v2, "SubscriptionManager.DUAL_CARD_MODE_GLOBAL_GSM"

    .restart local v2       #sMode:Ljava/lang/String;
    goto/16 :goto_0

    .line 2222
    :sswitch_0
    const-string v0, "SINGLE_MODE_SIM_CARD"

    .restart local v0       #sCard1Type:Ljava/lang/String;
    goto/16 :goto_1

    .line 2223
    .end local v0           #sCard1Type:Ljava/lang/String;
    :sswitch_1
    const-string v0, "SINGLE_MODE_USIM_CARD"

    .restart local v0       #sCard1Type:Ljava/lang/String;
    goto/16 :goto_1

    .line 2224
    .end local v0           #sCard1Type:Ljava/lang/String;
    :sswitch_2
    const-string v0, "SINGLE_MODE_RUIM_CARD"

    .restart local v0       #sCard1Type:Ljava/lang/String;
    goto/16 :goto_1

    .line 2225
    .end local v0           #sCard1Type:Ljava/lang/String;
    :sswitch_3
    const-string v0, "DUAL_MODE_CG_CARD"

    .restart local v0       #sCard1Type:Ljava/lang/String;
    goto/16 :goto_1

    .line 2226
    .end local v0           #sCard1Type:Ljava/lang/String;
    :sswitch_4
    const-string v0, "DUAL_MODE_UG_CARD"

    .restart local v0       #sCard1Type:Ljava/lang/String;
    goto/16 :goto_1

    .line 2227
    .end local v0           #sCard1Type:Ljava/lang/String;
    :sswitch_5
    const-string v0, "CT_NATIONAL_ROAMING_CARD"

    .restart local v0       #sCard1Type:Ljava/lang/String;
    goto/16 :goto_1

    .line 2228
    .end local v0           #sCard1Type:Ljava/lang/String;
    :sswitch_6
    const-string v0, "CU_DUAL_MODE_CARD"

    .restart local v0       #sCard1Type:Ljava/lang/String;
    goto/16 :goto_1

    .line 2229
    .end local v0           #sCard1Type:Ljava/lang/String;
    :sswitch_7
    const-string v0, "UNKNOWN_CARD"

    .restart local v0       #sCard1Type:Ljava/lang/String;
    goto/16 :goto_1

    .line 2233
    :sswitch_8
    const-string v1, "SINGLE_MODE_SIM_CARD"

    .restart local v1       #sCard2Type:Ljava/lang/String;
    goto/16 :goto_2

    .line 2234
    .end local v1           #sCard2Type:Ljava/lang/String;
    :sswitch_9
    const-string v1, "SINGLE_MODE_USIM_CARD"

    .restart local v1       #sCard2Type:Ljava/lang/String;
    goto/16 :goto_2

    .line 2235
    .end local v1           #sCard2Type:Ljava/lang/String;
    :sswitch_a
    const-string v1, "SINGLE_MODE_RUIM_CARD"

    .restart local v1       #sCard2Type:Ljava/lang/String;
    goto/16 :goto_2

    .line 2236
    .end local v1           #sCard2Type:Ljava/lang/String;
    :sswitch_b
    const-string v1, "DUAL_MODE_CG_CARD"

    .restart local v1       #sCard2Type:Ljava/lang/String;
    goto/16 :goto_2

    .line 2237
    .end local v1           #sCard2Type:Ljava/lang/String;
    :sswitch_c
    const-string v1, "DUAL_MODE_UG_CARD"

    .restart local v1       #sCard2Type:Ljava/lang/String;
    goto/16 :goto_2

    .line 2238
    .end local v1           #sCard2Type:Ljava/lang/String;
    :sswitch_d
    const-string v1, "CT_NATIONAL_ROAMING_CARD"

    .restart local v1       #sCard2Type:Ljava/lang/String;
    goto/16 :goto_2

    .line 2239
    .end local v1           #sCard2Type:Ljava/lang/String;
    :sswitch_e
    const-string v1, "CU_DUAL_MODE_CARD"

    .restart local v1       #sCard2Type:Ljava/lang/String;
    goto/16 :goto_2

    .line 2240
    .end local v1           #sCard2Type:Ljava/lang/String;
    :sswitch_f
    const-string v1, "UNKNOWN_CARD"

    .restart local v1       #sCard2Type:Ljava/lang/String;
    goto/16 :goto_2

    .line 2211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2221
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_7
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x29 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_4
    .end sparse-switch

    .line 2232
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_f
        0xa -> :sswitch_8
        0x14 -> :sswitch_9
        0x1e -> :sswitch_a
        0x28 -> :sswitch_b
        0x29 -> :sswitch_d
        0x2a -> :sswitch_e
        0x32 -> :sswitch_c
    .end sparse-switch
.end method

.method private GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    .locals 6
    .parameter "sMcc"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1239
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "460"

    aput-object v2, v0, v3

    const-string v2, "455"

    aput-object v2, v0, v4

    .line 1242
    .local v0, sChinaArr:[Ljava/lang/String;
    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "466"

    aput-object v2, v1, v3

    const-string v2, "440"

    aput-object v2, v1, v4

    const-string v2, "441"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v3, "310"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "311"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "316"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "450"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "302"

    aput-object v3, v1, v2

    .line 1248
    .local v1, sRoamingArr:[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1249
    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 1257
    :goto_0
    return-object v2

    .line 1252
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsStringInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1253
    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    goto :goto_0

    .line 1254
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsStringInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1255
    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    goto :goto_0

    .line 1257
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    goto :goto_0
.end method

.method private GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    .locals 2

    .prologue
    .line 1128
    const-string v1, "persist.radio.switchto.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, sMode:Ljava/lang/String;
    const-string v1, "MODEM_CDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    .line 1134
    :goto_0
    return-object v1

    .line 1131
    :cond_0
    const-string v1, "MODEM_GSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    goto :goto_0

    .line 1134
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    goto :goto_0
.end method

.method private GetMCC(I)Ljava/lang/String;
    .locals 7
    .parameter "sub"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    .line 1165
    const/4 v1, 0x0

    .line 1166
    .local v1, sMcc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1168
    .local v2, sOperator:Ljava/lang/String;
    const-string v4, "GetMCC(): begin"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1171
    if-nez p1, :cond_8

    .line 1172
    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_HOME:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_ROAMING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-ne v4, v5, :cond_5

    .line 1173
    :cond_0
    const-string v4, "ril.currMcc"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1174
    if-eqz v1, :cond_2

    .line 1175
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v6, v4, :cond_1

    const-string v4, "111"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "999"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1176
    :cond_1
    const/4 v1, 0x0

    .line 1179
    :cond_2
    if-eqz v1, :cond_4

    .line 1180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetMCC(): sub1 ril.currMcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move-object v3, v1

    .line 1225
    :cond_3
    :goto_0
    return-object v3

    .line 1184
    :cond_4
    const-string v4, "GetMCC(): sub1 mcc is null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1195
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1196
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    .line 1197
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1200
    :cond_6
    if-nez p1, :cond_9

    .line 1202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetMCC(): sub1 sOperator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1213
    :goto_2
    if-eqz v2, :cond_7

    .line 1214
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_7

    .line 1215
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1216
    const-string v4, "111"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "999"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1222
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetMCC(): sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sMcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1223
    const-string v3, "GetMCC(): end"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move-object v3, v1

    .line 1225
    goto :goto_0

    .line 1188
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetMCC(): sub2 mcc is null, is GSM network available="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1190
    const-string v4, "GetMCC(): sub2 mcc get from ril.currGsmCountryId"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1191
    const-string v4, "ril.currGsmCountryId"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1204
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    :cond_9
    const/4 v4, 0x1

    if-ne v4, p1, :cond_a

    .line 1206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetMCC(): sub2 sOperator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1210
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetMCC(): invalid sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private IsCdmaCardReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1335
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaCardReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v1, v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private IsCdmaNetworkAvailable()Z
    .locals 2

    .prologue
    .line 1343
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_NOT_REGISTERED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsGsmCardReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1339
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmCardReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v1, v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsGsmNetworkAvailable()Z
    .locals 2

    .prologue
    .line 1347
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NO_CELL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsNotFoundCdmaNetwork()Z
    .locals 2

    .prologue
    .line 1353
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_NOT_REGISTERED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsNotFoundGsmNetwork()Z
    .locals 2

    .prologue
    .line 1357
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NO_CELL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsStringInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "sMcc"
    .parameter "sArray"

    .prologue
    .line 1229
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 1230
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1231
    const/4 v1, 0x1

    .line 1234
    :goto_1
    return v1

    .line 1229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1234
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private IsTimerRunning(I)Z
    .locals 1
    .parameter "evt"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private OpenCdmaModem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1284
    const-string v1, "OpenCdmaModem(): begin"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1286
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z

    if-eqz v1, :cond_0

    .line 1287
    const-string v1, "OpenGsmModem(): CDMA Modem is already opened, do nothing"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1297
    :goto_0
    return v0

    .line 1290
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 1291
    const-string v1, "OpenGsmModem(): CDMA Modem is opened secretly,it should not happen"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1292
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1296
    :cond_1
    const-string v0, "OpenCdmaModem(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1297
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OpenGsmModem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1262
    const-string v1, "OpenGsmModem(): begin"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1264
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z

    if-eqz v1, :cond_0

    .line 1265
    const-string v1, "OpenGsmModem(): GSM Modem is already opened, do nothing"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1280
    :goto_0
    return v0

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 1269
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v1, v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1270
    const-string v0, "OpenGsmModem() :Slot2 have SIM inserted, but it\'s deactivated, activate it!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->activateGsm()V

    .line 1279
    :cond_1
    :goto_1
    const-string v0, "OpenGsmModem(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1280
    const/4 v0, 0x0

    goto :goto_0

    .line 1273
    :cond_2
    const-string v1, "OpenGsmModem() :GSM Modem is opened secretly, no SIM, it should not happend"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1274
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_1
.end method

.method private PostCheckCdmaLost()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2096
    const/4 v2, 0x0

    .line 2097
    .local v2, sMcc:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 2099
    .local v0, nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    const-string v5, "PostCheckCdmaLost(): begin"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PostCheckCdmaLost(): IsGsmNetworkAvailable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PostCheckCdmaLost(): Property main slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.radio.slot.main"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2104
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2105
    const-string v4, "PostCheckCdmaLost(): no GSM network, do nothing"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2106
    const-string v4, "PostCheckCdmaLost(): end1"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2153
    :goto_0
    return v3

    .line 2110
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v2

    .line 2111
    if-eqz v2, :cond_1

    .line 2112
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v0

    .line 2115
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PostCheckCdmaLost(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GSM network found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2117
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$2;->$SwitchMap$com$android$internal$telephony$msim$GlobalModeManager$AreaCode:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2152
    const-string v4, "PostCheckCdmaLost(): end"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2120
    :pswitch_0
    const/4 v1, 0x0

    .line 2121
    .local v1, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    instance-of v3, v3, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    if-eqz v3, :cond_2

    .line 2122
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2125
    :cond_2
    const-string v3, "SLOT2"

    const-string v5, "persist.radio.slot.main"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2126
    const-string v3, "PostCheckCdmaLost(): Slot2 is main slot, do not switch"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v3, v4

    .line 2145
    goto :goto_0

    .line 2128
    :cond_4
    const-string v3, "PostCheckCdmaLost(): slot1 is mian slot"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2129
    if-eqz v1, :cond_5

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2130
    :cond_5
    const-string v3, "PostCheckCdmaLost(): switch to GSM"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2131
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 2132
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 2133
    const-string v3, "PostCheckCdmaLost(): end2"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v3, v4

    .line 2134
    goto/16 :goto_0

    .line 2136
    :cond_6
    const-string v3, "PostCheckCdmaLost(): Slot 2 Gsm is in call, cannot switch to GSM until call finished"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2137
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_3

    .line 2138
    const-string v3, "PostCheckCdmaLost(): set bSwitchToGsmAfterCallFinished to true"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2139
    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    .line 2140
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 2117
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private PostCheckGsm1Lost()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2157
    const/4 v1, 0x0

    .line 2158
    .local v1, sMcc:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 2160
    .local v0, nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    const-string v4, "PostCheckGsm1Lost(): begin"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PostCheckGsm1Lost(): IsCdmaNetworkAvailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PostCheckGsm1Lost(): mCurDualCardMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PostCheckGsm1Lost(): IsReselectionEnabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2166
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2167
    const-string v3, "PostCheckGsm1Lost(): no CDMA network, do nothing"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2168
    const-string v3, "PostCheckGsm1Lost(): end1"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2205
    :goto_0
    return v2

    .line 2172
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v1

    .line 2173
    if-eqz v1, :cond_1

    .line 2174
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v0

    .line 2177
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PostCheckGsm1Lost(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CDMA network found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2179
    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$2;->$SwitchMap$com$android$internal$telephony$msim$GlobalModeManager$AreaCode:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2204
    :cond_2
    const-string v3, "PostCheckGsm1Lost(): end"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2181
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2182
    const-string v2, "PostCheckGsm1Lost(): AREA_A CDMA network found, switch to CDMA"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2183
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v2, v6}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 2184
    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 2185
    const-string v2, "PostCheckGsm1Lost(): end2"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v2, v3

    .line 2186
    goto :goto_0

    .line 2192
    :pswitch_1
    const/4 v4, 0x3

    iget v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v4, v5, :cond_2

    .line 2193
    const-string v2, "PostCheckCdmaLost(): found AREA_B or AREA_C CDMA network, switch to CDMA"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2194
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v2, v6}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 2195
    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 2196
    const-string v2, "PostCheckGsm1Lost(): end3"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v2, v3

    .line 2197
    goto :goto_0

    .line 2179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private PostCheckGsm2LimitService(Ljava/util/ArrayList;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1982
    .local p1, networkInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v8, 0x0

    .line 1983
    .local v8, sMcc:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1984
    .local v0, bAreaA:Z
    const/4 v1, 0x0

    .line 1985
    .local v1, bAreaB:Z
    const/4 v2, 0x0

    .line 1986
    .local v2, bAreaC:Z
    const/4 v3, 0x0

    .line 1988
    .local v3, bListEmpty:Z
    const-string v10, "PostCheckGsm2LimitService(): begin"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1991
    const-string v10, "PostCheckGsm2LimitService(): networkInfoArray size is 0"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1992
    const/4 v3, 0x1

    .line 1995
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/OperatorInfo;

    .line 1996
    .local v6, ni:Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v6}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 1997
    .local v9, sOperator:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 1998
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2000
    sget-object v10, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 2001
    const/4 v0, 0x1

    .line 2002
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PostCheckGsm2LimitService(): there is Area_A in available network list "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2003
    :cond_2
    sget-object v10, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v11

    if-ne v10, v11, :cond_3

    .line 2004
    const/4 v1, 0x1

    .line 2005
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PostCheckGsm2LimitService(): there is Area_B in available network list "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2007
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PostCheckGsm2LimitService(): there is Area_C in available network list "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2008
    const/4 v2, 0x1

    goto :goto_0

    .line 2013
    .end local v6           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v9           #sOperator:Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PostCheckGsm2LimitService(): bAreaA="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",bAreaB="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",bAreaC="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",bListEmpty="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2014
    if-eqz v1, :cond_7

    .line 2015
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v10, v11, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundCdmaNetwork()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v10, :cond_5

    .line 2016
    const-string v10, "PostCheckGsm2LimitService(): EARA_B GSM network found and no CDMA network, switch to GSM"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2018
    const-string v10, "SLOT2"

    const-string v11, "persist.radio.slot.main"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2019
    const-string v10, "PostCheckGsm2LimitService(): Slot2 is main slot, do not switch"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2091
    :cond_5
    :goto_1
    const-string v10, "PostCheckGsm2LimitService(): end"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2092
    const/4 v10, 0x0

    :goto_2
    return v10

    .line 2021
    :cond_6
    const-string v10, "PostCheckGsm2LimitService(): switch to GSM"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2022
    iget-object v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 2023
    sget-object v10, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 2024
    const-string v10, "PostCheckGsm2LimitService(): end1"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2025
    const/4 v10, 0x1

    goto :goto_2

    .line 2029
    :cond_7
    if-eqz v2, :cond_5

    .line 2030
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v10, v11, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2031
    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v10, :cond_9

    .line 2032
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundCdmaNetwork()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v10, :cond_5

    .line 2033
    const-string v10, "PostCheckGsm2LimitService(): EARA_C GSM network found and no CDMA network, switch to GSM"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2035
    const-string v10, "SLOT2"

    const-string v11, "persist.radio.slot.main"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2036
    const-string v10, "PostCheckGsm2LimitService(): Slot2 is main slot, do not switch"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2038
    :cond_8
    const-string v10, "PostCheckGsm2LimitService(): switch to GSM"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2039
    iget-object v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 2040
    sget-object v10, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 2041
    const-string v10, "PostCheckGsm2LimitService(): end2"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2042
    const/4 v10, 0x1

    goto :goto_2

    .line 2046
    :cond_9
    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2047
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2048
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v8

    .line 2049
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v5

    .line 2050
    .local v5, nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    sget-object v10, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-eq v10, v5, :cond_a

    sget-object v10, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v10, v5, :cond_b

    .line 2051
    :cond_a
    const-string v10, "PostCheckGsm2LimitService(): found EARA_A or B CDMA network, can not switch to GSM"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2052
    const-string v10, "PostCheckGsm2LimitService(): end3"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2053
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2057
    .end local v5           #nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :cond_b
    const-string v10, "SLOT2"

    const-string v11, "persist.radio.slot.main"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2058
    const-string v10, "PostCheckGsm2LimitService(): Slot2 is main slot, do not switch"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2060
    :cond_c
    const-string v10, "999"

    iget-object v11, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mTempOldMcc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2061
    const-string v10, "PostCheckGsm2LimitService(): it\'s first time power on, switch to GSM"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2062
    iget-object v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 2063
    sget-object v10, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 2064
    const-string v10, "PostCheckGsm2LimitService(): end4"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2065
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2067
    :cond_d
    const/4 v7, 0x0

    .line 2068
    .local v7, phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    const-string v10, "PostCheckGsm2LimitService(): Enter EARA_C country, check whether CDMA is in call and reselect to GSM"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2069
    iget-object v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    instance-of v10, v10, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    if-eqz v10, :cond_e

    .line 2070
    iget-object v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v7, v10

    check-cast v7, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 2072
    :cond_e
    if-eqz v7, :cond_f

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isInCall()Z

    move-result v10

    if-nez v10, :cond_10

    .line 2073
    :cond_f
    const-string v10, "PostCheckGsm2LimitService(): switch to GSM"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2074
    iget-object v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 2075
    sget-object v10, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 2076
    const-string v10, "PostCheckGsm2LimitService(): end5"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2077
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2079
    :cond_10
    const-string v10, "PostCheckGsm2LimitService(): CDMA is in call, we can\'t switch to GSM modem until call finished"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 2080
    iget-object v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v10, :cond_5

    .line 2081
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    .line 2082
    iget-object v10, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    iget-object v11, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private PreCheckCdmaGot()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 1362
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 1363
    .local v0, nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    .line 1365
    .local v3, sTempOldMcc:Ljava/lang/String;
    const-string v4, "PreCheckCdmaGot(): begin"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): mCurDualCardMode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): IsReselectionEnabled="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): bCdmaInitSearchDone="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): bGsmInitSearchDone="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): IsGsmNetworkAvailable="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): IsReselectionEnabled="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): Property main slot="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "persist.radio.slot.main"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, sMcc:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1377
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v0

    .line 1378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot():"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " CDMA network found"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): mOldCdmaMcc="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",newMcc="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1380
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "999"

    iget-object v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1381
    const-string v4, "PreCheckCdmaGot():CDMA MCC changed, set bCdmaInitSearchDone to fasle"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1382
    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    .line 1384
    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    .line 1389
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$2;->$SwitchMap$com$android$internal$telephony$msim$GlobalModeManager$AreaCode:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 1458
    :pswitch_0
    const-string v4, "PreCheckCdmaGot(): AREA_B CDMA network found, do nothing"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1464
    :cond_1
    :goto_1
    const-string v4, "PreCheckCdmaGot(): end"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v4, v6

    .line 1465
    :goto_2
    return v4

    .line 1386
    :cond_2
    const-string v4, "PreCheckCdmaGot(): new Mcc is null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1391
    :pswitch_1
    const-string v4, "PreCheckCdmaGot(): AREA_A CDMA network found"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1392
    iget v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-eq v8, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1393
    const-string v4, "PreCheckCdmaGot(): AREA_A CDMA network found, set mCurDualCardMode to GLOBAL_CDMA"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1395
    iput v8, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    .line 1396
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v4, v8}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    goto :goto_1

    .line 1402
    :pswitch_2
    const-string v4, "PreCheckCdmaGot(): AREA_C network found"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1403
    iget v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v8, v4, :cond_1

    .line 1404
    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v4, :cond_3

    .line 1405
    const-string v4, "PreCheckCdmaGot(): bCdmaInitSearchDone is true, just close GSM modem"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1406
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v4, v5}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1407
    const-string v4, "PreCheckCdmaGot(): Close GSM modem"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1408
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->CloseGsmModem()V

    goto :goto_1

    .line 1411
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->OpenGsmModem()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1412
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v2

    .line 1413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckCdmaGot(): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " GSM network found"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1414
    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v7

    if-ne v4, v7, :cond_1

    .line 1415
    const-string v4, "PreCheckCdmaGot(): reselection to GSM network"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1417
    const-string v4, "SLOT2"

    const-string v7, "persist.radio.slot.main"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1418
    const-string v4, "PreCheckCdmaGot(): Slot2 is main slot, do not switch"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1420
    :cond_4
    const-string v4, "PreCheckCdmaGot(): slot1 is main slot"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1422
    const-string v4, "999"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1423
    const-string v4, "PreCheckCdmaGot(): it\'s first time power on, switch to GSM"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1424
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v4, v9}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1425
    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1426
    const-string v4, "PreCheckCdmaGot(): end1"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 1427
    goto/16 :goto_2

    .line 1429
    :cond_5
    const/4 v1, 0x0

    .line 1430
    .local v1, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    const-string v4, "PreCheckCdmaGot(): Enter EARA_C country, check whether GSM2 is in call and reselect to GSM"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1431
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    instance-of v4, v4, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    if-eqz v4, :cond_6

    .line 1432
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v1, v4

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 1434
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1435
    :cond_7
    const-string v4, "PreCheckCdmaGot(): switch to GSM"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1436
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v4, v9}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1437
    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1438
    const-string v4, "PreCheckCdmaGot(): end2"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 1439
    goto/16 :goto_2

    .line 1441
    :cond_8
    const-string v4, "PreCheckCdmaGot(): Slot 2 Gsm is in call, we can\'t switch to GSM modem until call finished"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1442
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_1

    .line 1443
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    .line 1444
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v7, v8}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1461
    .end local v1           #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    :pswitch_3
    const-string v4, "PreCheckCdmaGot(): AREA_X CDMA network found, do nothing"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private PreCheckCdmaLimitService()Z
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x1

    .line 1676
    const/4 v4, 0x0

    .line 1677
    .local v4, sMcc:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 1678
    .local v1, nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    .line 1679
    .local v5, sTempOldMcc:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1681
    .local v3, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    const-string v6, "PreCheckCdmaLimitService(): begin"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): sTempOldMcc:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1684
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v4

    .line 1685
    if-eqz v4, :cond_2

    .line 1686
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v1

    .line 1687
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Cdma network found"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): mOldCdmaMcc="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ",newMcc="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1689
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "999"

    iget-object v9, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1690
    const-string v6, "PreCheckCdmaLimitService(): CDMA MCC changed, set bCdmaInitSearchDone to fasle"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1691
    iput-boolean v8, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    .line 1693
    :cond_0
    iput-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldCdmaMcc:Ljava/lang/String;

    .line 1698
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): bCdmaInitSearchDone="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1699
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): bGsmInitSearchDone="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): IsGsmNetworkAvailable="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): mCurDualCardMode="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1702
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): IsReselectionEnabled="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1704
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v4

    .line 1705
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v0

    .line 1706
    .local v0, GsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): CDMA area:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", GSM area:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1708
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$2;->$SwitchMap$com$android$internal$telephony$msim$GlobalModeManager$AreaCode:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_0

    .line 1830
    :cond_1
    :goto_1
    const-string v6, "PreCheckCdmaLimitService(): end"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v6, v8

    .line 1831
    :goto_2
    return v6

    .line 1695
    .end local v0           #GsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :cond_2
    const-string v6, "PreCheckCdmaLimitService(): new Mcc is null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1710
    .restart local v0       #GsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1711
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1712
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v4

    .line 1713
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v2

    .line 1714
    .local v2, nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    const-string v6, "PreCheckCdmaLimitService(): GSM network is available"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1715
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): nCdmaArea="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", nGsmArea="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1717
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-eq v6, v2, :cond_3

    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v6, v2, :cond_4

    .line 1718
    :cond_3
    const-string v6, "PreCheckCdmaLimitService(): found EARA_B or EARA_C GSM network, can not switch"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1722
    .end local v2           #nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :cond_4
    const-string v6, "PreCheckCdmaLimitService(): no GSM network or only EAR_A GSM network, switch to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1723
    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z

    if-eqz v6, :cond_5

    .line 1724
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v6, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1725
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    :goto_3
    move v6, v7

    .line 1729
    goto :goto_2

    .line 1727
    :cond_5
    const-string v6, "PreCheckCdmaLimitService(): Gsm Modem is not ready, just wait"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1730
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->OpenGsmModem()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v6, :cond_1

    .line 1731
    const-string v6, "999"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1732
    const-string v6, "PreCheckCdmaLimitService(): it\'s first time power on, switch to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1733
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v6, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1734
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1735
    const-string v6, "PreCheckCdmaLimitService(): end1"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v6, v7

    .line 1736
    goto/16 :goto_2

    .line 1738
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1739
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v4

    .line 1740
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v2

    .line 1741
    .restart local v2       #nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-eq v6, v2, :cond_8

    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v6, v2, :cond_9

    .line 1742
    :cond_8
    const-string v6, "PreCheckCdmaLimitService(): found EARA_B or EARA_C GSM network, can not switch"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1746
    .end local v2           #nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :cond_9
    const-string v6, "PreCheckCdmaLimitService(): Enter EARA_B country, check whether GSM1 is in call and reselect to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1747
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    instance-of v6, v6, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    if-eqz v6, :cond_a

    .line 1748
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v6

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 1750
    :cond_a
    if-eqz v3, :cond_b

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1751
    :cond_b
    const-string v6, "PreCheckCdmaLimitService(): switch to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1752
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v6, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1753
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1754
    const-string v6, "PreCheckCdmaLimitService(): end2"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v6, v7

    .line 1755
    goto/16 :goto_2

    .line 1757
    :cond_c
    const-string v6, "PreCheckCdmaLimitService(): Slot1 Gsm is in call, cannot switch to CDMA modem until call finished"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1758
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_1

    .line 1759
    const-string v6, "PreCheckCdmaLimitService(): set bSwitchToCdmaAfterCallFinished to true"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1760
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z

    .line 1761
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-interface {v6, v7, v12, v9}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1769
    :pswitch_1
    iget v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v11, v6, :cond_1

    .line 1770
    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v6, :cond_d

    .line 1771
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundGsmNetwork()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v6, :cond_1

    .line 1772
    const-string v6, "PreCheckCdmaLimitService(): no GSM network, switch to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1773
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v6, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1774
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1775
    const-string v6, "PreCheckCdmaLimitService(): end3"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v6, v7

    .line 1776
    goto/16 :goto_2

    .line 1778
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->OpenGsmModem()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v6, :cond_1

    .line 1779
    const-string v6, "999"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1780
    const-string v6, "PreCheckCdmaLimitService(): it\'s first time power on, switch to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1781
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v6, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1782
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1783
    const-string v6, "PreCheckCdmaLimitService(): end4"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v6, v7

    .line 1784
    goto/16 :goto_2

    .line 1786
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1787
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v4

    .line 1788
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v2

    .line 1789
    .restart local v2       #nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v6, v2, :cond_f

    .line 1790
    const-string v6, "PreCheckCdmaLimitService(): found EARA_C GSM network, can not switch"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1794
    .end local v2           #nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :cond_f
    const-string v6, "PreCheckCdmaLimitService(): Enter EARA_B country, check whether GSM1 is in call and reselect to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1795
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    instance-of v6, v6, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    if-eqz v6, :cond_10

    .line 1796
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v6

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 1798
    :cond_10
    if-eqz v3, :cond_11

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v6

    if-nez v6, :cond_12

    .line 1799
    :cond_11
    const-string v6, "PreCheckCdmaLimitService(): switch to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1800
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v6, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1801
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    move v6, v7

    .line 1802
    goto/16 :goto_2

    .line 1804
    :cond_12
    const-string v6, "PreCheckCdmaLimitService(): Slot1 Gsm is in call, cannot switch to CDMA modem until call finished"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1805
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PreCheckCdmaLimitService(): mGsmPhone:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1806
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_1

    .line 1807
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z

    .line 1808
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-interface {v6, v7, v12, v9}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1817
    :pswitch_2
    iget v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v11, v6, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundGsmNetwork()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v6, :cond_1

    .line 1818
    const-string v6, "PreCheckCdmaLimitService(): no GSM network, switch to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1819
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v6, v10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1820
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1821
    const-string v6, "PreCheckCdmaLimitService(): end5"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v6, v7

    .line 1822
    goto/16 :goto_2

    .line 1708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private PreCheckCdmaLost()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1929
    const-string v0, "PreCheckCdmaLost(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreCheckCdmaLost(): bGsmInitSearchDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreCheckCdmaLost(): IsGsmNetworkAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreCheckCdmaLost(): mCurDualCardMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1935
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->OpenGsmModem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1936
    const-string v0, "PreCheckCdmaLost: Open GSM modem success"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1937
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundGsmNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v0, :cond_0

    .line 1938
    const-string v0, "PreCheckCdmaLost(): No GSM network either, do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1939
    const-string v0, "PreCheckCdmaLost(): end1"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1955
    :goto_0
    return v2

    .line 1943
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v0, v1, :cond_1

    .line 1944
    const-string v0, "PreCheckCdmaLost(): Start CDMA lost timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1945
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    .line 1946
    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_CDMA_LOST_DURATION:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ScheduleRun(III)V

    .line 1947
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->acquireWakeLock()V

    .line 1954
    :cond_1
    :goto_1
    const-string v0, "PreCheckCdmaLost(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1952
    :cond_2
    const-string v0, "PreCheckCdmaLost(): Open GSM modem fail"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private PreCheckGsm1Got()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1469
    const/4 v2, 0x0

    .line 1470
    .local v2, sMcc:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 1471
    .local v1, nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    .line 1473
    .local v3, sTempOldMcc:Ljava/lang/String;
    const-string v6, "PreCheckGsm1Got(): begin"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1475
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v2

    .line 1476
    if-eqz v2, :cond_2

    .line 1477
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v1

    .line 1478
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " GSM network found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): mOldGsmMcc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",newMcc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1480
    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "999"

    iget-object v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1481
    const-string v6, "PreCheckGsm1Got(): GSM MCC changed, set bGsmInitSearchDone to false"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1482
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    .line 1484
    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    .line 1489
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): bCdmaInitSearchDone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): bGsmInitSearchDone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1491
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): IsCdmaNetworkAvailable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): mCurDualCardMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): IsReselectionEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1495
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$2;->$SwitchMap$com$android$internal$telephony$msim$GlobalModeManager$AreaCode:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1550
    :cond_1
    :goto_1
    const-string v4, "PreCheckGsm1Got(): end"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 1551
    :goto_2
    return v4

    .line 1486
    :cond_2
    const-string v6, "PreCheckGsm1Got(): new Mcc is null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1497
    :pswitch_0
    const-string v6, "PreCheckGsm1Got():: it should not happen, but if using CMU, maybe it will happen"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1498
    const-string v6, "PreCheckGsm1Got(): bCdmaModemOnbCdmaModemOn"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1499
    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z

    if-eqz v6, :cond_3

    .line 1500
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1501
    const-string v5, "PreCheckGsm1Got(): switch to CDMA"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1502
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v5, v8}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1503
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1504
    const-string v5, "PreCheckGsm1Got(): end1"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1508
    :cond_3
    const-string v4, "PreCheckGsm1Got(): Just open CDMA modem"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1509
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->OpenCdmaModem()Z

    goto :goto_1

    .line 1515
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v6, :cond_4

    .line 1516
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->CloseCdmaModem()V

    goto :goto_1

    .line 1517
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->OpenCdmaModem()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1518
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v2

    .line 1519
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v0

    .line 1520
    .local v0, nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CDMA network is available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1522
    const-string v6, "999"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1523
    const-string v6, "PreCheckGsm1Got(): it\'s first time power on, reselect to CDMA"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1524
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v6, v0, :cond_5

    iget v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-eq v9, v6, :cond_6

    :cond_5
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v6, v0, :cond_1

    .line 1526
    :cond_6
    const-string v5, "PreCheckGsm1Got(): switch to CDMA"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1527
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v5, v8}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1528
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1529
    const-string v5, "PreCheckGsm1Got(): end2"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1533
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreCheckGsm1Got(): Enter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "GSM Area, check if reselection needed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1534
    sget-object v6, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v6, v0, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v9, v6, :cond_1

    .line 1535
    const-string v5, "PreCheckGsm1Got(): AREA_B CDMA network found"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1536
    const-string v5, "PreCheckGsm1Got(): switch to CDMA"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1537
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v5, v8}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1538
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1539
    const-string v5, "PreCheckGsm1Got(): end3"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private PreCheckGsm1LimitService()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1875
    const/4 v2, 0x0

    .line 1876
    .local v2, sMcc:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 1878
    .local v1, nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    const-string v5, "PreCheckGsm1LimitService(): begin"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1880
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v2

    .line 1881
    if-eqz v2, :cond_0

    .line 1882
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v1

    .line 1885
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreCheckGsm1LimitService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GSM network found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1886
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreCheckGsm1LimitService: GSM sMcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1887
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreCheckGsm1LimitService: bCdmaInitSearchDone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1888
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreCheckGsm1LimitService: IsCdmaNetworkAvailable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreCheckGsm1LimitService: mCurDualCardMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreCheckGsm1LimitService: IsReselectionEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1892
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v5, v1, :cond_5

    .line 1893
    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1894
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v2

    .line 1895
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v0

    .line 1896
    .local v0, nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-eq v5, v0, :cond_1

    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v5, v0, :cond_2

    .line 1897
    :cond_1
    const-string v4, "PreCheckGsm1LimitService(): found EARA_A or EARA_B CDMA network, switch to CDMA"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1898
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v4, v7}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1899
    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1900
    const-string v4, "PreCheckGsm1LimitService(): end1"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1923
    .end local v0           #nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :goto_0
    return v3

    .line 1905
    .restart local v0       #nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :cond_2
    const-string v3, "PreCheckGsm1LimitService(): found EARA_C CDMA network, do nothing"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1922
    .end local v0           #nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :cond_3
    :goto_1
    const-string v3, "PreCheckGsm1LimitService(): end"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v3, v4

    .line 1923
    goto :goto_0

    .line 1907
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundCdmaNetwork()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1908
    const-string v4, "PreCheckGsm1LimitService(): no CDMA network, but it is EARA_A GSM network, switch to CDMA"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1909
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v4, v7}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1910
    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1911
    const-string v4, "PreCheckGsm1LimitService(): end2"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1914
    :cond_5
    const/4 v3, 0x3

    iget v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v3, v5, :cond_3

    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-eq v3, v1, :cond_6

    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v3, v1, :cond_3

    .line 1915
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1916
    const-string v3, "PreCheckGsm1LimitService(): can not register to GSM1 network,because ChinaTelecom can roam to almost all GSM network of the world,it should not happen, maybe SIM is removed by user after power on, do nothing"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private PreCheckGsm1Lost()Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1959
    const-string v0, "PreCheckGsm1Lost(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreCheckGsm1Lost(): bGsmInitSearchDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreCheckGsm1Lost(): IsCdmaNetworkAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreCheckGsm1Lost(): mCurDualCardMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1965
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->OpenCdmaModem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1966
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundCdmaNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v0, :cond_0

    .line 1967
    const-string v0, "PreCheckGsm1Lost(): No CDMA network either, do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1968
    const-string v0, "PreCheckGsm1Lost(): end1"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1978
    :goto_0
    return v2

    .line 1972
    :cond_0
    const-string v0, "PreCheckGsm1Lost: Start GSM1 lost timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1973
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    .line 1974
    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_GSM1_LOST_DURATION:I

    invoke-direct {p0, v3, v0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ScheduleRun(III)V

    .line 1975
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->acquireWakeLock()V

    .line 1977
    :cond_1
    const-string v0, "PreCheckGsm1Lost(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private PreCheckGsm2Got()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v6, 0x1

    .line 1555
    const/4 v3, 0x0

    .line 1556
    .local v3, sMcc:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 1557
    .local v1, nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    .line 1559
    .local v4, sTempOldMcc:Ljava/lang/String;
    const-string v5, "PreCheckGSM2Got(): begin"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1561
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v3

    .line 1563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGSM2Got(): GSM MCC"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGSM2Got(): mCurDualCardMode="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGSM2Got(): bCdmaInitSearchDone="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGSM2Got(): bGsmInitSearchDone="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGSM2Got(): IsCdmaCardReady="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1568
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGSM2Got(): IsCdmaNetworkAvailable="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGSM2Got(): Property main slot="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "persist.radio.slot.main"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGSM2Got(): IsReselectionEnabled="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1572
    if-eqz v3, :cond_2

    .line 1573
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v1

    .line 1574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGsm2Got(): "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " GSM network found"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreCheckGsm2Got(): mOldGsmMcc="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",newMcc="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1576
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "999"

    iget-object v8, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1577
    const-string v5, "PreCheckGsm2Got(): GSM MCC changed, set bGsmInitSearchDone to false"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1578
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    .line 1580
    :cond_0
    iput-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    .line 1585
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$2;->$SwitchMap$com$android$internal$telephony$msim$GlobalModeManager$AreaCode:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 1671
    :cond_1
    :goto_1
    const-string v5, "PreCheckGSM2Got(): end"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v5, v7

    .line 1672
    :goto_2
    return v5

    .line 1582
    :cond_2
    const-string v5, "PreCheckGsm2Got(): new MCC is null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1587
    :pswitch_0
    iget v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v10, v5, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundCdmaNetwork()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v5, :cond_1

    .line 1589
    const-string v5, "SLOT2"

    const-string v8, "persist.radio.slot.main"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1590
    const-string v5, "PreCheckGsm2Got(): Slot2 is main slot, do not switch"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1592
    :cond_3
    const-string v5, "PreCheckGsm2Got(): slot 1 is main slot, switch to GSM"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1593
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v5, v9}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1594
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1595
    const-string v5, "PreCheckGsm2Got(): end1"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v5, v6

    .line 1596
    goto :goto_2

    .line 1603
    :pswitch_1
    iget v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v10, v5, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1604
    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    if-eqz v5, :cond_5

    .line 1605
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsNotFoundCdmaNetwork()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v5, :cond_1

    .line 1606
    const-string v5, "PreCheckGsm2Got(): bGsmInitSearchDone and bCdmaInitSearchDone is true"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1607
    const-string v5, "PreCheckGsm2Got(): Slot 1 is mian lost and no CDMA network, switch to GSM"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1609
    const-string v5, "SLOT2"

    const-string v8, "persist.radio.slot.main"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1610
    const-string v5, "PreCheckGsm2Got(): Slot2 is main slot, do not switch"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1612
    :cond_4
    const-string v5, "PreCheckGsm2Got(): Slot1 is main slot, switch to GSM"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1613
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v5, v9}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1614
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1615
    const-string v5, "PreCheckGsm2Got(): end2"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v5, v6

    .line 1616
    goto/16 :goto_2

    .line 1620
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1621
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1622
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v3

    .line 1623
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v0

    .line 1624
    .local v0, nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-eq v5, v0, :cond_6

    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v5, v0, :cond_7

    .line 1625
    :cond_6
    const-string v5, "PreCheckGsm2Got(): found Erea A or B CDMA network, can not switch to GSM"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1630
    .end local v0           #nCdmaArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    :cond_7
    const-string v5, "SLOT2"

    const-string v8, "persist.radio.slot.main"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1631
    const-string v5, "PreCheckGsm2Got(): Slot2 is main slot, do not switch"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1633
    :cond_8
    const-string v5, "999"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1634
    const-string v5, "PreCheckGsm2Got(): it\'s first time power on, switch to GSM"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1635
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v5, v9}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1636
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1637
    const-string v5, "PreCheckGsm2Got(): end3"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v5, v6

    .line 1638
    goto/16 :goto_2

    .line 1640
    :cond_9
    const/4 v2, 0x0

    .line 1641
    .local v2, phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    const-string v5, "PreCheckGsm2Got(): check whether CDMA is in call before switch to GSM"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1642
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    instance-of v5, v5, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    if-eqz v5, :cond_a

    .line 1643
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v2, v5

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 1645
    :cond_a
    if-eqz v2, :cond_b

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isInCall()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1646
    :cond_b
    const-string v5, "PreCheckGsm2Got(): it\'s first time power on, switch to GSM"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1647
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v5, v9}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 1648
    sget-object v5, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 1649
    const-string v5, "PreCheckGsm2Got(): end4"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    move v5, v6

    .line 1650
    goto/16 :goto_2

    .line 1652
    :cond_c
    const-string v5, "PreCheckGsm2Got(): CDMA is in call, cannot switch to GSM until call finished"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1653
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_1

    .line 1654
    const-string v5, "PreCheckGsm2Got(): set bSwitchToGsmAfterCallFinished to true"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1655
    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    .line 1656
    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-interface {v5, v6, v8, v9}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1585
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private PreCheckGsm2LimitService()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1835
    const/4 v1, 0x0

    .line 1836
    .local v1, sMcc:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 1838
    .local v0, nGsmArea:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    const-string v2, "PreCheckGsm2LimitService(): begin"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1840
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetMCC(I)Ljava/lang/String;

    move-result-object v1

    .line 1841
    if-eqz v1, :cond_3

    .line 1842
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetAreaCodeFromMcc(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    move-result-object v0

    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreCheckGsm2LimitService(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GSM network found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreCheckGsm2LimitService(): mOldGsmMcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newMcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1845
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "999"

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1846
    const-string v2, "PreCheckGsm2LimitService(): GSM MCC changed, set bGsmInitSearchDone to false"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1847
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    .line 1853
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mOldGsmMcc:Ljava/lang/String;

    .line 1858
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreCheckGsm2LimitService(): mCurDualCardMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1860
    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-eq v2, v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    if-ne v2, v0, :cond_4

    :cond_0
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v2, v3, :cond_4

    .line 1861
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    .line 1862
    const-string v2, "PreCheckGsm2LimitService(): Query avlailable networks"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1863
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1870
    :cond_1
    :goto_2
    const-string v2, "PreCheckGsm2LimitService(): end"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1871
    return v5

    .line 1851
    :cond_2
    const-string v2, "PreCheckGsm2LimitService(): old MCC is invalid or MCC not changed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1855
    :cond_3
    const-string v2, "PreCheckGsm2LimitService(): new Mcc is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1867
    :cond_4
    const-string v2, "PreCheckGsm2LimitService(): se bGsmInitSearchDone to true"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1868
    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto :goto_2
.end method

.method private ScheduleRun(III)V
    .locals 4
    .parameter "flag"
    .parameter "duration"
    .parameter "Evt"

    .prologue
    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleRun(): flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1024
    return-void
.end method

.method private ShowChooseDualModeDialog()V
    .locals 4

    .prologue
    .line 1057
    const-string v2, "ShowChooseDualModeDialog()"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1059
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1060
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.GlobalModeActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1062
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v2, "Dialog"

    const-string v3, "DualMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1065
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1084
    return-void
.end method

.method private ShowChooseSearchModeDialog()V
    .locals 4

    .prologue
    .line 1087
    const-string v2, "ShowChooseSearchModeDialog()"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1089
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1090
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.GlobalModeActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1092
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string v2, "Dialog"

    const-string v3, "SelectMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1095
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1113
    return-void
.end method

.method private ShowManualNetworkList()V
    .locals 4

    .prologue
    .line 1047
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1048
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.NetworkSetting"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1050
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string v2, "subscription"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1053
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1054
    return-void
.end method

.method private ShowSwitchingDualModeDialog()V
    .locals 4

    .prologue
    .line 1116
    const-string v2, "ShowSwitchingDualModeDialog()"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1119
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.GlobalModeActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1121
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const-string v2, "Dialog"

    const-string v3, "SwithingDualMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1124
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1125
    return-void
.end method

.method private SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V
    .locals 6
    .parameter "eMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 962
    const-string v2, "SwitchModem(): begin"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 964
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bRebootInProgress:Z

    .line 966
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 967
    const/16 v2, 0x14

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 972
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitchModem(): switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 973
    iput-object p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    .line 974
    iget-object v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 975
    .local v1, switchMtkSimMsg:Landroid/os/Message;
    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    if-ne v2, v3, :cond_1

    .line 976
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->switchMtkSimTo(ILandroid/os/Message;)V

    .line 980
    :goto_1
    const-string v2, "SwitchModem(): end"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 981
    return-void

    .line 978
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->switchMtkSimTo(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PostCheckGsm2LimitService(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/msim/GlobalModeManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaGot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/msim/GlobalModeManager;Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaLost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PostCheckCdmaLost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm2Got()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1Got()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/msim/GlobalModeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_GSM_MANUAL_SEARCH_DURATION:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/msim/GlobalModeManager;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ScheduleRun(III)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1Lost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/msim/GlobalModeManager;I)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ConvertGsmStatus(I)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PostCheckGsm1Lost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/msim/GlobalModeManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ShowChooseSearchModeDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/msim/GlobalModeManager;Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/msim/GlobalModeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/msim/GlobalModeManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ShowChooseDualModeDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/huawei/telephony/HuaweiTelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmCardReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm2LimitService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1LimitService()Z

    move-result v0

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 1027
    const-string v0, "acquireWakeLock(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mPowerManger:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 1029
    const-string v0, "acquireWakeLock(): do wake"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mPowerManger:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1033
    :cond_0
    const-string v0, "acquireWakeLock(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1034
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/GlobalModeManager;
    .locals 2

    .prologue
    .line 169
    const-class v1, Lcom/android/internal/telephony/msim/GlobalModeManager;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager;->sInstance:Lcom/android/internal/telephony/msim/GlobalModeManager;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager;->sInstance:Lcom/android/internal/telephony/msim/GlobalModeManager;

    .line 173
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager;->sInstance:Lcom/android/internal/telephony/msim/GlobalModeManager;

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 2272
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GlobalModeManager]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 1037
    const-string v0, "releaseWakeLock(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    const-string v0, "releaseWakeLock(): do release"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1043
    :cond_0
    const-string v0, "releaseWakeLock(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 1044
    return-void
.end method


# virtual methods
.method public IgnoreManualSelectMode()Z
    .locals 2

    .prologue
    .line 957
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsReselectionEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 891
    const-string v1, "persist.sys.hw.engmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsSlot2Gsm()Z
    .locals 2

    .prologue
    .line 953
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PowerOnCdmaModem(Z)V
    .locals 0
    .parameter "bOn"

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z

    .line 696
    return-void
.end method

.method public PowerOnGsmModem(Z)V
    .locals 0
    .parameter "bOn"

    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z

    .line 888
    return-void
.end method

.method public RegisterEvent(Landroid/content/Context;)V
    .locals 6
    .parameter "Cxt"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    const-string v0, "GlobalModeManager RegisterEvent"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mContext:Landroid/content/Context;

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mPowerManger:Landroid/os/PowerManager;

    .line 185
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    .line 186
    invoke-static {v4}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mSubMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForUnsolMCC(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForUnsolGsmState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    :cond_1
    return-void
.end method

.method public ResetStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 898
    const-string v1, "ResetStatus(): begin"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 901
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->releaseWakeLock()V

    .line 902
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bRebootInProgress:Z

    .line 903
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z

    .line 904
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z

    .line 905
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaCardReady:Z

    .line 906
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmCardReady:Z

    .line 907
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z

    .line 908
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z

    .line 914
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 915
    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 920
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 921
    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    :cond_0
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_2

    .line 929
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 931
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_3

    .line 932
    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 936
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->DumpAll()V

    .line 937
    const-string v1, "ResetStatus(): end"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public SetCdmaCardTypeReady()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 617
    const-string v0, "SetCdmaCardTypeReady(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 619
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaCardReady:Z

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "SetCdmaCardTypeReady(): CDMA card is alerady ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 621
    const-string v0, "SetCdmaCardTypeReady(): end1"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 692
    :goto_0
    return-void

    .line 624
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaCardReady:Z

    .line 627
    const-string v0, "SetCdmaCardTypeReady(): set bRebootInProgress to false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 628
    iput-boolean v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bRebootInProgress:Z

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v0, v3}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getCardType(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard1Type:I

    .line 632
    const-string v0, "SetCdmaCardTypeReady(): mCard1Type=40"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 634
    const/16 v0, 0x28

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard1Type:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x29

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard1Type:I

    if-ne v0, v1, :cond_3

    .line 635
    :cond_1
    const-string v0, "SetCdmaCardTypeReady(): set bDualModeCard to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 636
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    .line 643
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCdmaCardTypeReady(): mCurDualCardMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCdmaCardTypeReady(): IsCdmaNetworkAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCdmaCardTypeReady(): mCRegStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 647
    const-string v0, "SetCdmaCardTypeReady(): set mCurModemMode to MODEM_MODE_CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 649
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_4

    .line 652
    const-string v0, "SetCdmaCardTypeReady(): CDMA is in service, call PreCheckCdmaGot()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 653
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    .line 654
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaGot()Z

    .line 656
    const-string v0, "SetCdmaCardTypeReady(): CDMA is in service, set bCdmaInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 657
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    .line 678
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v0, v1, :cond_8

    .line 679
    const-string v0, "SetCdmaCardTypeReady(): it is Global CDMA mode, do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 691
    :goto_3
    const-string v0, "SetCdmaCardTypeReady(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    :cond_3
    const-string v0, "SetCdmaCardTypeReady(): set bDualModeCard to false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 640
    iput-boolean v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    goto/16 :goto_1

    .line 658
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_HOME:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_ROAMING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-ne v0, v1, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_6

    .line 659
    const-string v0, "SetCdmaCardTypeReady(): CRegStatus is HOME or Roaming, call PreCheckCdmaGot()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    .line 661
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaGot()Z

    .line 663
    const-string v0, "SetCdmaCardTypeReady(): set bCdmaInitSearchDone to ture"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 664
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    goto :goto_2

    .line 665
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_7

    .line 666
    const-string v0, "SetCdmaCardTypeReady(): it should not happen, CDMA DENIED only happened when UIM is not inserted"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 667
    const-string v0, "SetCdmaCardTypeReady(): call PreCheckCdmaLimitService()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaLimitService()Z

    .line 669
    const-string v0, "SetCdmaCardTypeReady(): set bCdmaInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 670
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    goto :goto_2

    .line 671
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_2

    .line 672
    const-string v0, "SetCdmaCardTypeReady(): CRegStatus show Cdma finish searching and not found, we call PreCheckCdmaLost"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaLost()Z

    .line 674
    const-string v0, "SetCdmaCardTypeReady(): set bCdmaInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 675
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    goto :goto_2

    .line 680
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_HOME:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_a

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_ROAMING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_a

    .line 683
    :cond_9
    const-string v0, "SetCdmaCardTypeReady(): it is CDMA only mode, start EVENT_SEARCH_T1_TIMEOUT"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 684
    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_SEARCH_T1_DURATION:I

    const/16 v1, 0xa

    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ScheduleRun(III)V

    goto/16 :goto_3

    .line 685
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-eq v2, v0, :cond_b

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v0, v1, :cond_c

    .line 686
    :cond_b
    const-string v0, "SetCdmaCardTypeReady(): not possible, it should not come here????"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 688
    :cond_c
    const-string v0, "SetCdmaCardTypeReady(): it is Single RUIM,do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public SetCdmaNetworkState(I)V
    .locals 2
    .parameter "nState"

    .prologue
    .line 699
    const-string v0, "SetCdmaNetworkState(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCdmaNetworkState(): prev mCRegStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 701
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ConvertCdmaStatus(I)Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCdmaNetworkState(): new mCRegStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCdmaNetworkState(): Current modem mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCdmaNetworkState(): IsCdmaCardReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCdmaNetworkState(): IsCdmaNetworkAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_HOME:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_ROAMING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-ne v0, v1, :cond_1

    .line 709
    :cond_0
    const-string v0, "SetCdmaNetworkState(): CDMA is in service, home or roaming"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 710
    const-string v0, "SetCdmaNetworkState(): end1"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 714
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 715
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 717
    const-string v0, "SetCdmaNetworkState(): it should not happen, CDMA DENIED only happened when UIM is not inserted"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 723
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    if-eq v0, v1, :cond_4

    .line 724
    const-string v0, "SetCdmaNetworkState(): set bCdmaInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z

    .line 729
    :cond_4
    const-string v0, "SetCdmaNetworkState(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_5
    const-string v0, "SetCdmaNetworkState(): call PreCheckCdmaLimitService()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 720
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaLimitService()Z

    goto :goto_1
.end method

.method public SetGsmCardTypeReady()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    .line 733
    const-string v0, "SetGsmCardTypeReady(): begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 735
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmCardReady:Z

    if-eqz v0, :cond_0

    .line 736
    const-string v0, "SetGsmCardTypeReady(): GSM card is already ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 737
    const-string v0, "SetGsmCardTypeReady(): end1"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 884
    :goto_0
    return-void

    .line 740
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmCardReady:Z

    .line 743
    const-string v0, "SetGsmCardTypeReady(): set bRebootInProgress to false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bRebootInProgress:Z

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-virtual {v0, v2}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getCardType(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard2Type:I

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetGsmCardTypeReady(): mCard2Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCard2Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v2, v0, :cond_4

    .line 753
    :cond_1
    const-string v0, "SetGsmCardTypeReady(): set mCurModemMode to MODEM_MODE_GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 754
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    .line 756
    const-string v0, "SetGsmCardTypeReady(): set bDualModeCard to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 757
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    .line 758
    const-string v0, "SetGsmCardTypeReady(): it\'s Slot1 GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 766
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z

    if-eqz v0, :cond_5

    .line 768
    const-string v0, "SetGsmCardTypeReady(): Card1 is dual mode card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 775
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 777
    const-string v0, "SetGsmCardTypeReady(): Card1 mode is CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 784
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 786
    const-string v0, "SetGsmCardTypeReady(): CDMA card is ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 793
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmCardReady()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 795
    const-string v0, "SetGsmCardTypeReady(): GSM card is ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 802
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_9

    .line 804
    const-string v0, "SetGsmCardTypeReady(): GSM is in service"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 810
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetGsmCardTypeReady(): mCurDualCardMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetGsmCardTypeReady(): mRacStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetGsmCardTypeReady(): IsGsmNetworkAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_a

    .line 817
    const-string v0, "SetGsmCardTypeReady(): GSM1 is in service, call PreCheckGsm1Got()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 818
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    .line 819
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1Got()Z

    .line 820
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 821
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    .line 876
    :cond_2
    :goto_7
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 877
    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    if-ne v2, v0, :cond_3

    .line 878
    const-string v0, "SetGsmCardTypeReady(): it is GSM only mode, start Slot1 TIMER_SEARCH_T1_DURATION"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 879
    iget v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_SEARCH_T1_DURATION:I

    const/16 v1, 0xa

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ScheduleRun(III)V

    .line 883
    :cond_3
    const-string v0, "SetGsmCardTypeReady(): end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    :cond_4
    const-string v0, "SetGsmCardTypeReady(): set mCurModemMode to MODEM_MODE_CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 761
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    .line 763
    const-string v0, "SetGsmCardTypeReady(): it\'s Slot2 GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 772
    :cond_5
    const-string v0, "SetGsmCardTypeReady(): Card1 is not dual mode card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 781
    :cond_6
    const-string v0, "SetGsmCardTypeReady(): Card1 mode is GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 790
    :cond_7
    const-string v0, "SetGsmCardTypeReady(): CDMA card is not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 799
    :cond_8
    const-string v0, "SetGsmCardTypeReady(): GSM card is not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 808
    :cond_9
    const-string v0, "SetGsmCardTypeReady(): GSM is not in service, is limited service or no service"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 822
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_OK:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-ne v0, v1, :cond_b

    .line 823
    const-string v0, "SetGsmCardTypeReady(): GSM1 RAC_OK, call PreCheckGsm1Got()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 824
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V

    .line 825
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1Got()Z

    .line 826
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 827
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto :goto_7

    .line 828
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 829
    const-string v0, "SetGsmCardTypeReady(): GSM1 RAC_LIMITED_SERVICE, call PreCheckGsm1LimitService()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 830
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1LimitService()Z

    .line 831
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 832
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto :goto_7

    .line 833
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_d

    .line 835
    const-string v0, "SetGsmCardTypeReady(): GSM1 no network, call PreCheckGsm1Lost()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 836
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1Lost()Z

    .line 837
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 838
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto/16 :goto_7

    .line 839
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-ne v0, v1, :cond_e

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetGsmCardTypeReady(): mRacStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 841
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 842
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto/16 :goto_7

    .line 846
    :cond_e
    const-string v0, "SetGsmCardTypeReady(): modem mode is GSM, but do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 848
    :cond_f
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_10

    .line 850
    const-string v0, "SetGsmCardTypeReady(): GSM2 is in service, call PreCheckGsm2Got()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm2Got()Z

    .line 852
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 853
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto/16 :goto_7

    .line 854
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_OK:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-ne v0, v1, :cond_11

    .line 855
    const-string v0, "SetGsmCardTypeReady(): GSM2 RAC_OK, call PreCheckGsm2Got()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm2Got()Z

    .line 857
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 858
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto/16 :goto_7

    .line 859
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 860
    const-string v0, "SetGsmCardTypeReady(): GSM2 RAC_LIMITED_SERVICE, call PreCheckGsm2LimitService()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 861
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm2LimitService()Z

    .line 862
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 863
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto/16 :goto_7

    .line 864
    :cond_12
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_13

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_13

    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-eq v0, v1, :cond_13

    .line 866
    const-string v0, "SetGsmCardTypeReady(): GSM2 no network, do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 867
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 868
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto/16 :goto_7

    .line 869
    :cond_13
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    if-ne v0, v1, :cond_2

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetGsmCardTypeReady(): mRacStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 871
    const-string v0, "SetGsmCardTypeReady(): set bGsmInitSearchDone to true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V

    .line 872
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z

    goto/16 :goto_7
.end method

.method public SwitchModem(I)V
    .locals 1
    .parameter "iMode"

    .prologue
    .line 945
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->ordinal()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 946
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->ordinal()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 948
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    goto :goto_0
.end method

.method public setDualCardMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 941
    iput p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I

    .line 942
    return-void
.end method
