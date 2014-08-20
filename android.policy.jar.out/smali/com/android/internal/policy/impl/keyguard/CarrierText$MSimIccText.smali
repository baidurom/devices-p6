.class Lcom/android/internal/policy/impl/keyguard/CarrierText$MSimIccText;
.super Ljava/lang/Object;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MSimIccText"
.end annotation


# instance fields
.field iccMissingInstructions:I

.field iccMissingMessageShort:I

.field iccPinLockedMessage:I

.field iccPukLockedMessage:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$MSimIccText;->iccMissingMessageShort:I

    .line 426
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$MSimIccText;->iccMissingInstructions:I

    .line 427
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$MSimIccText;->iccPinLockedMessage:I

    .line 428
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$MSimIccText;->iccPukLockedMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/CarrierText$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText$MSimIccText;-><init>()V

    return-void
.end method
