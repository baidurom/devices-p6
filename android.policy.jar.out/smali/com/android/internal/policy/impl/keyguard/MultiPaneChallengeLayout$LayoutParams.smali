.class public Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MultiPaneChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CHILD_TYPE_CHALLENGE:I = 0x2

.field public static final CHILD_TYPE_NONE:I = 0x0

.field public static final CHILD_TYPE_PAGE_DELETE_DROP_TARGET:I = 0x7

.field public static final CHILD_TYPE_SCRIM:I = 0x4

.field public static final CHILD_TYPE_USER_SWITCHER:I = 0x3

.field public static final CHILD_TYPE_WIDGET:I = 0x1


# instance fields
.field public centerWithinArea:F

.field public childType:I

.field public gravity:I

.field public maxHeight:I

.field public maxWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 495
    invoke-direct {p0, v0, v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(II)V

    .line 496
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 548
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 480
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 489
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 491
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 492
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 549
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V
    .locals 6
    .parameter "c"
    .parameter "attrs"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x51

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 499
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 478
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 480
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 489
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 491
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 492
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 501
    sget-object v1, Lcom/android/internal/R$styleable;->MultiPaneChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 504
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 506
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 508
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 510
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 512
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 516
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    if-nez v1, :cond_0

    .line 517
    iget v1, p3, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v1, :cond_1

    .line 518
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_0

    .line 544
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 545
    return-void

    .line 520
    :pswitch_0
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 523
    :pswitch_1
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 526
    :pswitch_2
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 530
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 532
    :pswitch_3
    const/16 v1, 0x31

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 535
    :pswitch_4
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 538
    :pswitch_5
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 530
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 552
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 480
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 489
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 491
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 492
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 553
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 556
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 480
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 489
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 491
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 492
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 557
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 562
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 563
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 564
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 565
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 566
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 567
    return-void
.end method
