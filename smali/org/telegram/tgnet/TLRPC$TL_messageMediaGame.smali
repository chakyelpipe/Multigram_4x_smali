.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;
.super Lorg/telegram/tgnet/TLRPC$MessageMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageMediaGame"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3801
    const v0, -0x24e6ff8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3800
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 3805
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_game;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_game;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 3806
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3809
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3810
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_game;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3811
    return-void
.end method
