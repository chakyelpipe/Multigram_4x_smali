.class public Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelForbidden"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18724
    const v0, 0x289da732

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18723
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18728
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    .line 18729
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->broadcast:Z

    .line 18730
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->megagroup:Z

    .line 18731
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->id:I

    .line 18732
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->access_hash:J

    .line 18733
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->title:Ljava/lang/String;

    .line 18734
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 18735
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->until_date:I

    .line 18737
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 18729
    goto :goto_0

    :cond_2
    move v1, v2

    .line 18730
    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18740
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18741
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->broadcast:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    .line 18742
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->megagroup:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    .line 18743
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18744
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18745
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 18746
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 18747
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 18748
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->until_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18750
    :cond_0
    return-void

    .line 18741
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_0

    .line 18742
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto :goto_1
.end method
