.class public Lorg/telegram/tgnet/TLRPC$PageBlock;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageBlock"
.end annotation


# instance fields
.field public allow_scrolling:Z

.field public audio_id:J

.field public author:Ljava/lang/String;

.field public author_photo_id:J

.field public autoplay:Z

.field public blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field public bottom:Z

.field public caption:Lorg/telegram/tgnet/TLRPC$RichText;

.field public channel:Lorg/telegram/tgnet/TLRPC$Chat;

.field public cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field public date:I

.field public first:Z

.field public flags:I

.field public full_width:Z

.field public h:I

.field public html:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public level:I

.field public loop:Z

.field public mid:I

.field public name:Ljava/lang/String;

.field public ordered:Z

.field public photo_id:J

.field public poster_photo_id:J

.field public published_date:I

.field public text:Lorg/telegram/tgnet/TLRPC$RichText;

.field public url:Ljava/lang/String;

.field public video_id:J

.field public w:I

.field public webpage_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10969
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 10992
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11002
    const/4 v0, 0x0

    .line 11003
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    sparse-switch p1, :sswitch_data_0

    .line 11080
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 11081
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PageBlock"

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

    .line 11005
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;-><init>()V

    .line 11006
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11008
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;-><init>()V

    .line 11009
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11011
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;-><init>()V

    .line 11012
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11014
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;-><init>()V

    .line 11015
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11017
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;-><init>()V

    .line 11018
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11020
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;-><init>()V

    .line 11021
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11023
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;-><init>()V

    .line 11024
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11026
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;-><init>()V

    .line 11027
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11029
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 11030
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11032
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;-><init>()V

    .line 11033
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11035
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;-><init>()V

    .line 11036
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11038
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;-><init>()V

    .line 11039
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11041
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;-><init>()V

    .line 11042
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11044
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;-><init>()V

    .line 11045
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11047
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;-><init>()V

    .line 11048
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11050
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;-><init>()V

    .line 11051
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11053
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;-><init>()V

    .line 11054
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 11056
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;-><init>()V

    .line 11057
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 11059
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;-><init>()V

    .line 11060
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 11062
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;-><init>()V

    .line 11063
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 11065
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;-><init>()V

    .line 11066
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 11068
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;-><init>()V

    .line 11069
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 11071
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;-><init>()V

    .line 11072
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 11074
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;-><init>()V

    .line 11075
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 11077
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 11083
    :cond_0
    if-eqz v0, :cond_1

    .line 11084
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PageBlock;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 11086
    :cond_1
    return-object v0

    .line 11003
    nop

    :sswitch_data_0
    .sparse-switch
        -0x700565e1 -> :sswitch_f
        -0x45501a20 -> :sswitch_1
        -0x402f9b14 -> :sswitch_5
        -0x3f8f26c2 -> :sswitch_2
        -0x321dff2f -> :sswitch_3
        -0x31f2c850 -> :sswitch_4
        -0x26ca2705 -> :sswitch_d
        -0x2628e79a -> :sswitch_6
        -0x24df4e78 -> :sswitch_0
        -0x1639667e -> :sswitch_e
        -0x10e8ae4b -> :sswitch_13
        -0xed4491f -> :sswitch_15
        0x8b31c4f -> :sswitch_a
        0x130c8963 -> :sswitch_16
        0x13567e8a -> :sswitch_7
        0x263d7c26 -> :sswitch_10
        0x292c7be9 -> :sswitch_11
        0x31b81a7f -> :sswitch_18
        0x39f23300 -> :sswitch_14
        0x3a58c7f4 -> :sswitch_c
        0x3d5b64f2 -> :sswitch_9
        0x467a0766 -> :sswitch_8
        0x48870999 -> :sswitch_b
        0x4f4456d3 -> :sswitch_17
        0x70abc3fd -> :sswitch_12
    .end sparse-switch
.end method
