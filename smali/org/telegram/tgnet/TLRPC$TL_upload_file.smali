.class public Lorg/telegram/tgnet/TLRPC$TL_upload_file;
.super Lorg/telegram/tgnet/TLRPC$upload_File;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_file"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28341
    const v0, 0x96a18d5

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28340
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$upload_File;-><init>()V

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 1

    .prologue
    .line 28359
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    if-eqz v0, :cond_1

    .line 28366
    :cond_0
    :goto_0
    return-void

    .line 28362
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_0

    .line 28363
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 28364
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 28345
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$storage_FileType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$storage_FileType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->type:Lorg/telegram/tgnet/TLRPC$storage_FileType;

    .line 28346
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->mtime:I

    .line 28347
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 28348
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 28351
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28352
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->type:Lorg/telegram/tgnet/TLRPC$storage_FileType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$storage_FileType;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28353
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->mtime:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28354
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 28355
    return-void
.end method
