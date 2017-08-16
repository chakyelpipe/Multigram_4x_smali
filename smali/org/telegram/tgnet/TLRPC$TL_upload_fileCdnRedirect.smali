.class public Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;
.super Lorg/telegram/tgnet/TLRPC$upload_File;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_fileCdnRedirect"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28370
    const v0, -0x15ad01a6

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28369
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$upload_File;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 28374
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->dc_id:I

    .line 28375
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->file_token:[B

    .line 28376
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_key:[B

    .line 28377
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_iv:[B

    .line 28378
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 28379
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_0

    .line 28380
    if-eqz p2, :cond_1

    .line 28381
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 28385
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 28386
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 28387
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;

    move-result-object v3

    .line 28388
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    if-nez v3, :cond_2

    .line 28393
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    :cond_1
    return-void

    .line 28391
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->cdn_file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 28396
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28397
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->dc_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28398
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->file_token:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 28399
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_key:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 28400
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_iv:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 28401
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28402
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->cdn_file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 28403
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28404
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 28405
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->cdn_file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28407
    :cond_0
    return-void
.end method
