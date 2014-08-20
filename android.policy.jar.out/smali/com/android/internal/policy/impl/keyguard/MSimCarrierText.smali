.class public Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;
.super Lcom/android/internal/policy/impl/keyguard/CarrierText;
.source "MSimCarrierText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimCarrierText"


# instance fields
.field private mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->initialize()V

    .line 76
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->onAttachedToWindow()V

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 113
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->onDetachedFromWindow()V

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 119
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->onFinishInflate()V

    .line 106
    const-string v0, "MSimCarrierText"

    const-string v1, "onFinishInflate!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method protected updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 9
    .parameter "simState"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v8, 0x1

    .line 79
    const-string v3, ""

    .line 80
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 82
    aget-object v4, p1, v2

    aget-object v5, p2, v2

    aget-object v6, p3, v2

    invoke-virtual {p0, v4, v5, v6, v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    .local v0, displayText:Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v4, :cond_0

    .line 85
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    :goto_1
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v1

    .line 89
    .local v1, dualCardMode:I
    const-string v4, "MSimCarrierText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualCardMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-nez v2, :cond_2

    if-eq v1, v8, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 92
    :cond_1
    const-string v0, ""

    .line 95
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 80
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v1           #dualCardMode:I
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 95
    .restart local v1       #dualCardMode:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040558

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 99
    .end local v0           #displayText:Ljava/lang/CharSequence;
    .end local v1           #dualCardMode:I
    :cond_5
    const-string v4, "MSimCarrierText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCarrierText: text = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method
