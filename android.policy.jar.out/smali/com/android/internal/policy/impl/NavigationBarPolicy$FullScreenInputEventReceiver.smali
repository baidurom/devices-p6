.class final Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "NavigationBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NavigationBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FullScreenInputEventReceiver"
.end annotation


# instance fields
.field private mPolicy:Lcom/android/internal/policy/impl/NavigationBarPolicy;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/policy/impl/NavigationBarPolicy;)V
    .locals 1
    .parameter "inputChannel"
    .parameter "context"
    .parameter "looper"
    .parameter "policy"

    .prologue
    .line 187
    invoke-direct {p0, p1, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;->mPolicy:Lcom/android/internal/policy/impl/NavigationBarPolicy;

    .line 188
    iput-object p4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;->mPolicy:Lcom/android/internal/policy/impl/NavigationBarPolicy;

    .line 189
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 194
    .local v2, handled:Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;->mPolicy:Lcom/android/internal/policy/impl/NavigationBarPolicy;

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/NavigationBarPolicy;->addPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    const/4 v2, 0x1

    .line 204
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "NavigationBarPolicy"

    const-string v4, "Failed to finish input event."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 200
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "NavigationBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "full screen input hander error e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 205
    :catch_2
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "NavigationBarPolicy"

    const-string v4, "Failed to finish input event."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 203
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 204
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/NavigationBarPolicy$FullScreenInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 207
    :goto_1
    throw v3

    .line 205
    :catch_3
    move-exception v1

    .line 206
    .restart local v1       #e:Ljava/lang/RuntimeException;
    const-string v4, "NavigationBarPolicy"

    const-string v5, "Failed to finish input event."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
