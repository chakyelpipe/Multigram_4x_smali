.class public Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_forwardMessages"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public background:Z

.field public flags:I

.field public from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public random_id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public silent:Z

.field public to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public with_my_score:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23000
    const v0, 0x708e0195

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22999
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 23007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    .line 23008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23012
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 23016
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23017
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 23018
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->background:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit8 v2, v2, 0x40

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 23019
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit16 v2, v2, 0x100

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 23020
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23021
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23022
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23023
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23024
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23025
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    if-ge v0, v1, :cond_3

    .line 23026
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23025
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 23017
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto :goto_0

    .line 23018
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit8 v2, v2, -0x41

    goto :goto_1

    .line 23019
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit16 v2, v2, -0x101

    goto :goto_2

    .line 23028
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_3
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23029
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23030
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23031
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    .line 23032
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 23031
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 23034
    :cond_4
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23035
    return-void
.end method
