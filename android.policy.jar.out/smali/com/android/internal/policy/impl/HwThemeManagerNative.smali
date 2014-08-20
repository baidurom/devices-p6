.class public Lcom/android/internal/policy/impl/HwThemeManagerNative;
.super Ljava/lang/Object;
.source "HwThemeManagerNative.java"


# static fields
.field public static m_nv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "hwthememanager_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native readNv()Z
.end method
