.class public Lcom/android/internal/policy/impl/NavigationBarPolicy;
.super Ljava/lang/Object;
.source "NavigationBarPolicy.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final HIT_REGION_SCALE:I = 0x4

.field static HIT_REGION_TO_MAX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NavigationBarPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetector:Landroid/view/GestureDetector;

.field mForceMinNavigationBar:Z

.field private mFullScreenEventReceiver:Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;

.field private mFullScreenInputChannel:Landroid/view/InputChannel;

.field private mHWNavigationBarBCR:Landroid/content/BroadcastReceiver;

.field private mIsValidGesture:Z

.field mMinNavigationBar:Z

.field private mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->HIT_REGION_TO_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .parameter "context"
    .parameter "policy"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    .line 42
    iput-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 43
    iput-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mDetector:Landroid/view/GestureDetector;

    .line 45
    iput-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mHWNavigationBarBCR:Landroid/content/BroadcastReceiver;

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mMinNavigationBar:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mForceMinNavigationBar:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mIsValidGesture:Z

    .line 213
    iput-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenEventReceiver:Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;

    .line 214
    iput-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenInputChannel:Landroid/view/InputChannel;

    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 56
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mDetector:Landroid/view/GestureDetector;

    .line 57
    iget-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigationbar_is_min"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mMinNavigationBar:Z

    .line 61
    new-instance v1, Lcom/android/internal/policy/impl/NavigationBarPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/NavigationBarPolicy$1;-><init>(Lcom/android/internal/policy/impl/NavigationBarPolicy;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mHWNavigationBarBCR:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, hwfsfilter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.navigationbar.statuschange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mHWNavigationBarBCR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/NavigationBarPolicy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/NavigationBarPolicy;->updateNavigationBar(Z)V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mIsValidGesture:Z

    .line 89
    return-void
.end method

.method private sendBroadcast(Z)V
    .locals 2
    .parameter "minNaviBar"

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.navigationbar.statuschange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "minNavigationBar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method private touchDownIsValid(FF)Z
    .locals 6
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mForceMinNavigationBar:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 109
    :cond_1
    :goto_0
    return v1

    .line 97
    :cond_2
    const/4 v1, 0x0

    .line 98
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    sput v4, Lcom/android/internal/policy/impl/NavigationBarPolicy;->HIT_REGION_TO_MAX:I

    .line 99
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mMinNavigationBar:Z

    if-eqz v4, :cond_1

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 101
    .local v0, realSize:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 102
    iget-object v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v4, :cond_4

    .line 103
    iget v4, v0, Landroid/graphics/Point;->y:I

    sget v5, Lcom/android/internal/policy/impl/NavigationBarPolicy;->HIT_REGION_TO_MAX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 105
    :cond_4
    iget v4, v0, Landroid/graphics/Point;->x:I

    sget v5, Lcom/android/internal/policy/impl/NavigationBarPolicy;->HIT_REGION_TO_MAX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_5

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method private updateNavigationBar(Z)V
    .locals 5
    .parameter "minNaviBar"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mMinNavigationBar:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mMinNavigationBar:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotationMin:[I

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotationMin:[I

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigationbar_is_min"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "forceMinNavigationBar"

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mForceMinNavigationBar:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarSize(Z)V

    .line 128
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotationMax:[I

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotationMax:[I

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 121
    goto :goto_1
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 85
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/NavigationBarPolicy;->touchDownIsValid(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mIsValidGesture:Z

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mIsValidGesture:Z

    if-nez v2, :cond_0

    .line 159
    :goto_0
    return v1

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/NavigationBarPolicy;->sendBroadcast(Z)V

    .line 158
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NavigationBarPolicy;->reset()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 153
    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/NavigationBarPolicy;->sendBroadcast(Z)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 164
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 173
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NavigationBarPolicy;->reset()V

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method registerInputChannel()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    return v0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v2, "com.huawei.FullScreen"

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenInputChannel:Landroid/view/InputChannel;

    .line 223
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenInputChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_1

    .line 224
    const-string v0, "NavigationBarPolicy"

    const-string v1, "monitorInput return InputChannel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_1
    new-instance v1, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenInputChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/policy/impl/NavigationBarPolicy;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenEventReceiver:Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;

    goto :goto_0
.end method

.method unregisterInputChannel()V
    .locals 4

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenInputChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenEventReceiver:Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;->dispose()V

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenEventReceiver:Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mFullScreenInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NavigationBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove input chennel error e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mHWNavigationBarBCR:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mHWNavigationBarBCR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    :cond_0
    return-void
.end method
