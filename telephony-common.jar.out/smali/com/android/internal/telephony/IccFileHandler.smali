.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$1;,
        Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;,
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field private static final CUSTOM_FILE_PATH:Ljava/lang/String; = "file_path"

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_CUSTOM_BINARY_SIZE_DONE:I = 0x4b0

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field static final EVENT_GET_SMSC_ADDR_DONE:I = 0x44c

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_CUSTOM_BINARY_DONE:I = 0x4b1

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field static final EVENT_SET_SMSC_ADDR_DONE:I = 0x44d

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

.field private vnReaderHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 664
    new-instance v0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;-><init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccFileHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->vnReaderHandler:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 133
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccFileHandler;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 662
    return-void
.end method

.method private processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .parameter "response"
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, flag:Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccIoResult;

    .line 327
    .local v2, result:Lcom/android/internal/telephony/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 329
    const/4 v0, 0x1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 331
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v1

    .line 332
    .local v1, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v1, :cond_0

    .line 333
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 334
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 319
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public getCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    return-object v0
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 590
    sparse-switch p1, :sswitch_data_0

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    .line 616
    .local v0, card:Lcom/android/internal/telephony/UiccCard;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    const-string v1, "3F007F105F3A"

    .line 621
    .end local v0           #card:Lcom/android/internal/telephony/UiccCard;
    :goto_0
    return-object v1

    .line 598
    :sswitch_0
    const-string v1, "3F007F10"

    goto :goto_0

    .line 602
    :sswitch_1
    const-string v1, "3F00"

    goto :goto_0

    .line 605
    :sswitch_2
    const-string v1, "3F007F105F3A"

    goto :goto_0

    .line 607
    :sswitch_3
    const-string v1, "3F007F105F50"

    goto :goto_0

    .line 621
    .restart local v0       #card:Lcom/android/internal/telephony/UiccCard;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 590
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 191
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 194
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 196
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x44c

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 636
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .parameter "msg"

    .prologue
    .line 346
    const/16 v28, 0x0

    .line 358
    .local v28, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 360
    :sswitch_0
    const-string v3, "IccFileHandler: get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 362
    .local v21, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 363
    .local v25, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/IccIoResult;

    .line 364
    .local v29, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v28, v0

    .line 366
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 367
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v23

    .line 571
    .local v23, exc:Ljava/lang/Exception;
    if-eqz v28, :cond_e

    .line 572
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 371
    .end local v23           #exc:Ljava/lang/Exception;
    .restart local v21       #ar:Landroid/os/AsyncResult;
    .restart local v25       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .restart local v29       #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_1
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v24

    .line 373
    .local v24, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v24, :cond_2

    .line 374
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 378
    :cond_2
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 379
    .local v22, data:[B
    const/16 v3, 0xe

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 381
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v22, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_4

    .line 383
    :cond_3
    const-string v3, "IccFileHandler: File type mismatch: Throw Exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 384
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 387
    :cond_4
    const-string v3, "IccFileHandler: read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v13, 0x9

    const/16 v14, 0x4f20

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 396
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v24           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 397
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 398
    .restart local v25       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/IccIoResult;

    .line 399
    .restart local v29       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v28, v0

    .line 401
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    const-string v3, "IccFileHandler: read img success"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 407
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v24

    .line 408
    .restart local v24       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v24, :cond_0

    .line 409
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 413
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v24           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 414
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v28, v0

    .line 415
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/IccIoResult;

    .line 417
    .restart local v29       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 420
    const-string v3, "IccFileHandler: read icon success"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 424
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 425
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 426
    .restart local v25       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/IccIoResult;

    .line 427
    .restart local v29       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v28, v0

    .line 429
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 435
    .restart local v22       #data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v22, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_6

    .line 437
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 440
    :cond_6
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v27, v0

    .line 441
    .local v27, recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v27, v3

    .line 442
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v22, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v27, v3

    .line 444
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v27, v4

    const/4 v6, 0x0

    aget v6, v27, v6

    div-int/2addr v4, v6

    aput v4, v27, v3

    .line 446
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 449
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v27           #recordSize:[I
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 450
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 451
    .restart local v25       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/IccIoResult;

    .line 452
    .restart local v29       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v28, v0

    .line 454
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 459
    .restart local v22       #data:[B
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 460
    .local v5, fileid:I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v26, v0

    .line 462
    .local v26, recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_7

    .line 463
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 466
    :cond_7
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_8

    .line 467
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 470
    :cond_8
    const/16 v3, 0xe

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 472
    const/4 v3, 0x2

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 475
    .local v9, size:I
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 477
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_9

    .line 478
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 481
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v5           #fileid:I
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v9           #size:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 488
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v26           #recordNum:I
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 489
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v28, v0

    .line 490
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/IccIoResult;

    .line 492
    .restart local v29       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 497
    .restart local v22       #data:[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 499
    .restart local v5       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_a

    .line 500
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 503
    :cond_a
    const/16 v3, 0xd

    aget-byte v3, v22, v3

    if-eqz v3, :cond_b

    .line 504
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 507
    :cond_b
    const/4 v3, 0x2

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 510
    .restart local v9       #size:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v13, v5, v14, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 518
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 519
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 520
    .restart local v25       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/IccIoResult;

    .line 521
    .restart local v29       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v28, v0

    .line 523
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_c

    .line 528
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 530
    :cond_c
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 534
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_d

    .line 535
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 537
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 548
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v25           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 549
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v28, v0

    .line 550
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/IccIoResult;

    .line 552
    .restart local v29       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 561
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v29           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 562
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 565
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 566
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 574
    .end local v21           #ar:Landroid/os/AsyncResult;
    .restart local v23       #exc:Ljava/lang/Exception;
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x8 -> :sswitch_3
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0x44c -> :sswitch_8
        0x44d -> :sswitch_8
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 171
    const/16 v0, 0xb

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 175
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 179
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 263
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 266
    .local v11, response:Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " highOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lowOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 277
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 153
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 157
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 159
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 208
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 211
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 213
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "size"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 244
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 247
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move v6, p2

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 226
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 229
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 231
    return-void
.end method

.method public loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .parameter "filePath"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->vnReaderHandler:Landroid/os/Handler;

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1, p2, v4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 652
    .local v9, response:Landroid/os/Message;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 653
    .local v10, data:Landroid/os/Bundle;
    const-string v0, "file_path"

    invoke-virtual {v10, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v9, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    move v2, p2

    move-object v3, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 657
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "address"
    .parameter "result"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x44d

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 640
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v4, p2

    move-object v8, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 293
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 304
    return-void
.end method
