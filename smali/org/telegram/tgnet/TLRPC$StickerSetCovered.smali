.class public Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerSetCovered"
.end annotation


# instance fields
.field public cover:Lorg/telegram/tgnet/TLRPC$Document;

.field public covers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field public set:Lorg/telegram/tgnet/TLRPC$StickerSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12182
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 12184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 12188
    const/4 v0, 0x0

    .line 12189
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    sparse-switch p1, :sswitch_data_0

    .line 12197
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 12198
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in StickerSetCovered"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12191
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetMultiCovered;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetMultiCovered;-><init>()V

    .line 12192
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    goto :goto_0

    .line 12194
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    goto :goto_0

    .line 12200
    :cond_0
    if-eqz v0, :cond_1

    .line 12201
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 12203
    :cond_1
    return-object v0

    .line 12189
    nop

    :sswitch_data_0
    .sparse-switch
        0x3407e51b -> :sswitch_0
        0x6410a5d2 -> :sswitch_1
    .end sparse-switch
.end method
