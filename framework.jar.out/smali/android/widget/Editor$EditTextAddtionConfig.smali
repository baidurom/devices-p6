.class Landroid/widget/Editor$EditTextAddtionConfig;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EditTextAddtionConfig"
.end annotation


# instance fields
.field mCustomPopupPadding:I

.field mMaxViewWidthInPopup:I

.field mMaxWindowWidthInPopup:I

.field mMinTextSizeInPopup:I

.field mMinViewWidthInPopup:I

.field mTextBackgroundLeftRes:I

.field mTextBackgroundMediumRes:I

.field mTextBackgroundRes:I

.field mTextBackgroundRightRes:I

.field mTextBackgroundSingleRes:I

.field mTextDividerRes:I

.field mUseCustomStyle:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    return-void
.end method
