.class public Lorg/telegram/messenger/MessageObject;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    }
.end annotation


# static fields
.field private static final LINES_PER_BLOCK:I = 0xa

.field public static final MESSAGE_SEND_STATE_SENDING:I = 0x1

.field public static final MESSAGE_SEND_STATE_SEND_ERROR:I = 0x2

.field public static final MESSAGE_SEND_STATE_SENT:I

.field public static urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field public attachPathExists:Z

.field public audioProgress:F

.field public audioProgressSec:I

.field public botButtonsLayout:Ljava/lang/StringBuilder;

.field public caption:Ljava/lang/CharSequence;

.field public contentType:I

.field public customReplyName:Ljava/lang/String;

.field public dateKey:Ljava/lang/String;

.field public deleted:Z

.field public eventId:J

.field public forceUpdate:Z

.field private generatedWithMinSize:I

.field public gifState:F

.field public hasRtl:Z

.field public isDateObject:Z

.field private isRoundVideoCached:I

.field public lastLineWidth:I

.field private layoutCreated:Z

.field protected leftBound:I

.field public linkDescription:Ljava/lang/CharSequence;

.field public mediaExists:Z

.field public messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

.field public messageText:Ljava/lang/CharSequence;

.field public monthKey:Ljava/lang/String;

.field public photoThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public photoThumbs2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public replyMessageObject:Lorg/telegram/messenger/MessageObject;

.field public resendAsIs:Z

.field public textHeight:I

.field public textLayoutBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;"
        }
    .end annotation
.end field

.field public textWidth:I

.field public textXOffset:F

.field public type:I

.field public useCustomPhoto:Z

.field public videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field public viewsReloaded:Z

.field public wantedBotKeyboardWidth:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V
    .locals 8
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p4, "generateLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "users":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;ZJ)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;ZJ)V
    .locals 41
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p4, "generateLayout"    # Z
    .param p5, "eid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "users":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v35, 0x3e8

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->type:I

    .line 86
    const/16 v35, 0x34

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->leftBound:I

    .line 118
    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-static/range {v35 .. v36}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 120
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 121
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 123
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 124
    new-instance v35, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 127
    :cond_0
    const/16 v18, 0x0

    .line 128
    .local v18, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    if-lez v35, :cond_2

    .line 129
    if-eqz p2, :cond_1

    .line 130
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 132
    .restart local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    if-nez v18, :cond_2

    .line 133
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 137
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v35, v0

    if-eqz v35, :cond_4f

    .line 138
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3

    .line 139
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    move/from16 v35, v0

    if-eqz v35, :cond_8

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_7

    .line 141
    const-string/jumbo v35, "ActionYouCreateGroup"

    const v36, 0x7f070040

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 435
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    if-nez v35, :cond_4

    .line 436
    const-string/jumbo v35, ""

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 439
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->setType()V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->measureInlineBotButtons()V

    .line 442
    new-instance v22, Ljava/util/GregorianCalendar;

    invoke-direct/range {v22 .. v22}, Ljava/util/GregorianCalendar;-><init>()V

    .line 443
    .local v22, "rightNow":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x3e8

    mul-long v36, v36, v38

    move-object/from16 v0, v22

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 444
    const/16 v35, 0x6

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 445
    .local v11, "dateDay":I
    const/16 v35, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 446
    .local v13, "dateYear":I
    const/16 v35, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 447
    .local v12, "dateMonth":I
    const-string/jumbo v35, "%d_%02d_%02d"

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    .line 448
    const-string/jumbo v35, "%d_%02d"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v35, v0

    if-gez v35, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v35

    if-nez v35, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v35

    if-nez v35, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v35

    if-eqz v35, :cond_6

    .line 451
    :cond_5
    new-instance v35, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/VideoEditedInfo;->parseString(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_61

    .line 453
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 459
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    .line 460
    if-eqz p4, :cond_65

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v35, v0

    if-eqz v35, :cond_62

    .line 463
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 467
    .local v21, "paint":Landroid/text/TextPaint;
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    move/from16 v35, v0

    if-eqz v35, :cond_63

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v15, v0, [I

    .line 468
    .local v15, "emojiOnly":[I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    invoke-virtual/range {v21 .. v21}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v36

    const/high16 v37, 0x41a00000    # 20.0f

    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v37

    const/16 v38, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v15}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 469
    if-eqz v15, :cond_64

    const/16 v35, 0x0

    aget v35, v15, v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_64

    const/16 v35, 0x0

    aget v35, v15, v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_64

    .line 472
    const/16 v35, 0x0

    aget v35, v15, v35

    packed-switch v35, :pswitch_data_0

    .line 483
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintThreeEmoji:Landroid/text/TextPaint;

    .line 484
    .local v16, "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x41c00000    # 24.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 487
    .local v25, "size":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    check-cast v35, Landroid/text/Spannable;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/lang/CharSequence;->length()I

    move-result v37

    const-class v38, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface/range {v35 .. v38}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 488
    .local v27, "spans":[Lorg/telegram/messenger/Emoji$EmojiSpan;
    if-eqz v27, :cond_64

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_64

    .line 489
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_5
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v7, v0, :cond_64

    .line 490
    aget-object v35, v27, v7

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/Emoji$EmojiSpan;->replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V

    .line 489
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 143
    .end local v7    # "a":I
    .end local v11    # "dateDay":I
    .end local v12    # "dateMonth":I
    .end local v13    # "dateYear":I
    .end local v15    # "emojiOnly":[I
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v21    # "paint":Landroid/text/TextPaint;
    .end local v22    # "rightNow":Ljava/util/Calendar;
    .end local v25    # "size":I
    .end local v27    # "spans":[Lorg/telegram/messenger/Emoji$EmojiSpan;
    :cond_7
    const-string/jumbo v35, "ActionCreateGroup"

    const v36, 0x7f070022

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 145
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    move/from16 v35, v0

    if-eqz v35, :cond_f

    .line 146
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_9

    .line 148
    const-string/jumbo v35, "ActionYouLeftUser"

    const v36, 0x7f070042

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 150
    :cond_9
    const-string/jumbo v35, "ActionLeftUser"

    const v36, 0x7f070028

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 153
    :cond_a
    const/16 v34, 0x0

    .line 154
    .local v34, "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_b

    .line 155
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v34, Lorg/telegram/tgnet/TLRPC$User;

    .line 157
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b
    if-nez v34, :cond_c

    .line 158
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    .line 160
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_d

    .line 161
    const-string/jumbo v35, "ActionYouKickUser"

    const v36, 0x7f070041

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 162
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    .line 163
    const-string/jumbo v35, "ActionKickUserYou"

    const v36, 0x7f070027

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 165
    :cond_e
    const-string/jumbo v35, "ActionKickUser"

    const v36, 0x7f070026

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 169
    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    move/from16 v35, v0

    if-eqz v35, :cond_1e

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v24, v0

    .line 171
    .local v24, "singleUserId":I
    if-nez v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 174
    :cond_10
    if-eqz v24, :cond_1c

    .line 175
    const/16 v34, 0x0

    .line 176
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_11

    .line 177
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v34, Lorg/telegram/tgnet/TLRPC$User;

    .line 179
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11
    if-nez v34, :cond_12

    .line 180
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    .line 182
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_17

    .line 183
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_13

    .line 184
    const-string/jumbo v35, "ChannelJoined"

    const v36, 0x7f070139

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 186
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_15

    .line 187
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v35

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_14

    .line 188
    const-string/jumbo v35, "ChannelMegaJoined"

    const v36, 0x7f07013e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 190
    :cond_14
    const-string/jumbo v35, "ActionAddUserSelfMega"

    const v36, 0x7f070019

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 192
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_16

    .line 193
    const-string/jumbo v35, "ActionAddUserSelfYou"

    const v36, 0x7f07001a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 195
    :cond_16
    const-string/jumbo v35, "ActionAddUserSelf"

    const v36, 0x7f070018

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 199
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_18

    .line 200
    const-string/jumbo v35, "ActionYouAddUser"

    const v36, 0x7f07003d

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 201
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v35

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_1b

    .line 202
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_1a

    .line 203
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_19

    .line 204
    const-string/jumbo v35, "MegaAddedBy"

    const v36, 0x7f070408

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 206
    :cond_19
    const-string/jumbo v35, "ChannelAddedBy"

    const v36, 0x7f07011e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 209
    :cond_1a
    const-string/jumbo v35, "ActionAddUserYou"

    const v36, 0x7f07001b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 212
    :cond_1b
    const-string/jumbo v35, "ActionAddUser"

    const v36, 0x7f070017

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 217
    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 218
    const-string/jumbo v35, "ActionYouAddUser"

    const v36, 0x7f07003d

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 220
    :cond_1d
    const-string/jumbo v35, "ActionAddUser"

    const v36, 0x7f070017

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 224
    .end local v24    # "singleUserId":I
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    move/from16 v35, v0

    if-eqz v35, :cond_20

    .line 225
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_1f

    .line 226
    const-string/jumbo v35, "ActionInviteYou"

    const v36, 0x7f070025

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 228
    :cond_1f
    const-string/jumbo v35, "ActionInviteUser"

    const v36, 0x7f070024

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 230
    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_23

    .line 231
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_21

    .line 232
    const-string/jumbo v35, "ActionChannelChangedPhoto"

    const v36, 0x7f07001e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 234
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_22

    .line 235
    const-string/jumbo v35, "ActionYouChangedPhoto"

    const v36, 0x7f07003e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 237
    :cond_22
    const-string/jumbo v35, "ActionChangedPhoto"

    const v36, 0x7f07001c

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 240
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    move/from16 v35, v0

    if-eqz v35, :cond_26

    .line 241
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_24

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_24

    .line 242
    const-string/jumbo v35, "ActionChannelChangedTitle"

    const v36, 0x7f07001f

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 244
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_25

    .line 245
    const-string/jumbo v35, "ActionYouChangedTitle"

    const v36, 0x7f07003f

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 247
    :cond_25
    const-string/jumbo v35, "ActionChangedTitle"

    const v36, 0x7f07001d

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 250
    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_29

    .line 251
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_27

    .line 252
    const-string/jumbo v35, "ActionChannelRemovedPhoto"

    const v36, 0x7f070020

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 254
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_28

    .line 255
    const-string/jumbo v35, "ActionYouRemovedPhoto"

    const v36, 0x7f070043

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 257
    :cond_28
    const-string/jumbo v35, "ActionRemovedPhoto"

    const v36, 0x7f070038

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 260
    :cond_29
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;

    move/from16 v35, v0

    if-eqz v35, :cond_2d

    .line 261
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v35, v0

    if-eqz v35, :cond_2b

    .line 262
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_2a

    .line 263
    const-string/jumbo v35, "MessageLifetimeChangedOutgoing"

    const v36, 0x7f070421

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 265
    :cond_2a
    const-string/jumbo v35, "MessageLifetimeChanged"

    const v36, 0x7f070420

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 268
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_2c

    .line 269
    const-string/jumbo v35, "MessageLifetimeYouRemoved"

    const v36, 0x7f070425

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 271
    :cond_2c
    const-string/jumbo v35, "MessageLifetimeRemoved"

    const v36, 0x7f070423

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 274
    :cond_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    move/from16 v35, v0

    if-eqz v35, :cond_32

    .line 276
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x3e8

    mul-long v30, v36, v38

    .line 277
    .local v30, "time":J
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v35, v0

    if-eqz v35, :cond_30

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v35, v0

    if-eqz v35, :cond_30

    .line 278
    const-string/jumbo v35, "formatDateAtTime"

    const v36, 0x7f0707a2

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 282
    .local v10, "date":Ljava/lang/String;
    :goto_6
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 283
    .local v29, "to_user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v29, :cond_2f

    .line 284
    if-eqz p2, :cond_2e

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v29, Lorg/telegram/tgnet/TLRPC$User;

    .line 287
    .restart local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2e
    if-nez v29, :cond_2f

    .line 288
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 291
    :cond_2f
    if-eqz v29, :cond_31

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    .line 292
    .local v20, "name":Ljava/lang/String;
    :goto_7
    const-string/jumbo v35, "NotificationUnrecognizedDevice"

    const v36, 0x7f0704db

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v20, v37, v38

    const/16 v38, 0x1

    aput-object v10, v37, v38

    const/16 v38, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    const/16 v38, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 280
    .end local v10    # "date":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_30
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "date":Ljava/lang/String;
    goto/16 :goto_6

    .line 291
    .restart local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_31
    const-string/jumbo v20, ""

    goto :goto_7

    .line 293
    .end local v10    # "date":Ljava/lang/String;
    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v30    # "time":J
    :cond_32
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    move/from16 v35, v0

    if-eqz v35, :cond_33

    .line 294
    const-string/jumbo v35, "NotificationContactJoined"

    const v36, 0x7f0704b0

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 295
    :cond_33
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_34

    .line 296
    const-string/jumbo v35, "NotificationContactNewPhoto"

    const v36, 0x7f0704b1

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 297
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v35, v0

    if-eqz v35, :cond_3a

    .line 298
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    move/from16 v35, v0

    if-eqz v35, :cond_36

    .line 299
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_35

    .line 300
    const-string/jumbo v35, "ActionTakeScreenshootYou"

    const v36, 0x7f07003a

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 302
    :cond_35
    const-string/jumbo v35, "ActionTakeScreenshoot"

    const v36, 0x7f070039

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 304
    :cond_36
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v35, v0

    if-eqz v35, :cond_3

    .line 305
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .line 306
    .local v8, "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v35, v0

    if-eqz v35, :cond_38

    .line 307
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_37

    .line 308
    const-string/jumbo v35, "MessageLifetimeChangedOutgoing"

    const v36, 0x7f070421

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 310
    :cond_37
    const-string/jumbo v35, "MessageLifetimeChanged"

    const v36, 0x7f070420

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 313
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_39

    .line 314
    const-string/jumbo v35, "MessageLifetimeYouRemoved"

    const v36, 0x7f070425

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 316
    :cond_39
    const-string/jumbo v35, "MessageLifetimeRemoved"

    const v36, 0x7f070423

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 320
    .end local v8    # "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    :cond_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    move/from16 v35, v0

    if-eqz v35, :cond_3c

    .line 321
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_3b

    .line 322
    const-string/jumbo v35, "ActionTakeScreenshootYou"

    const v36, 0x7f07003a

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 324
    :cond_3b
    const-string/jumbo v35, "ActionTakeScreenshoot"

    const v36, 0x7f070039

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 326
    :cond_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    move/from16 v35, v0

    if-eqz v35, :cond_3d

    .line 327
    const-string/jumbo v35, "YouCreatedBroadcastList"

    const v36, 0x7f07078e

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 328
    :cond_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    move/from16 v35, v0

    if-eqz v35, :cond_3f

    .line 329
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_3e

    .line 330
    const-string/jumbo v35, "ActionCreateMega"

    const v36, 0x7f070023

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 332
    :cond_3e
    const-string/jumbo v35, "ActionCreateChannel"

    const v36, 0x7f070021

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 334
    :cond_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    move/from16 v35, v0

    if-eqz v35, :cond_40

    .line 335
    const-string/jumbo v35, "ActionMigrateFromGroup"

    const v36, 0x7f070029

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 336
    :cond_40
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    move/from16 v35, v0

    if-eqz v35, :cond_41

    .line 337
    const-string/jumbo v35, "ActionMigrateFromGroup"

    const v36, 0x7f070029

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 338
    :cond_41
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v35, v0

    if-eqz v35, :cond_43

    .line 339
    if-nez v18, :cond_42

    if-eqz p3, :cond_42

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessageObject;->generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_0

    :cond_42
    const/16 v35, 0x0

    goto :goto_8

    .line 340
    :cond_43
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    move/from16 v35, v0

    if-eqz v35, :cond_44

    .line 341
    const-string/jumbo v35, "HistoryCleared"

    const v36, 0x7f070367

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 342
    :cond_44
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    move/from16 v35, v0

    if-eqz v35, :cond_45

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0

    .line 344
    :cond_45
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    move/from16 v35, v0

    if-eqz v35, :cond_4c

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    .line 346
    .local v9, "call":Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    move/from16 v19, v0

    .line 347
    .local v19, "isMissed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_49

    .line 348
    if-eqz v19, :cond_48

    .line 349
    const-string/jumbo v35, "CallMessageOutgoingMissed"

    const v36, 0x7f0700f7

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 362
    :goto_9
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->duration:I

    move/from16 v35, v0

    if-lez v35, :cond_3

    .line 363
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->duration:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/LocaleController;->formatCallDuration(I)Ljava/lang/String;

    move-result-object v14

    .line 364
    .local v14, "duration":Ljava/lang/String;
    const-string/jumbo v35, "CallMessageWithDuration"

    const v36, 0x7f0700f9

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    const/16 v38, 0x1

    aput-object v14, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "_messageText":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    .line 367
    .local v28, "start":I
    const/16 v35, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-eq v0, v1, :cond_3

    .line 368
    new-instance v26, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 369
    .local v26, "sp":Landroid/text/SpannableString;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v35

    add-int v17, v28, v35

    .line 370
    .local v17, "end":I
    if-lez v28, :cond_46

    add-int/lit8 v35, v28, -0x1

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x28

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_46

    .line 371
    add-int/lit8 v28, v28, -0x1

    .line 373
    :cond_46
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_47

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x29

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_47

    .line 374
    add-int/lit8 v17, v17, 0x1

    .line 376
    :cond_47
    new-instance v35, Lorg/telegram/ui/Components/TypefaceSpan;

    sget-object v36, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct/range {v35 .. v36}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v36, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v28

    move/from16 v3, v17

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 377
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 351
    .end local v6    # "_messageText":Ljava/lang/String;
    .end local v14    # "duration":Ljava/lang/String;
    .end local v17    # "end":I
    .end local v26    # "sp":Landroid/text/SpannableString;
    .end local v28    # "start":I
    :cond_48
    const-string/jumbo v35, "CallMessageOutgoing"

    const v36, 0x7f0700f6

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 354
    :cond_49
    if-eqz v19, :cond_4a

    .line 355
    const-string/jumbo v35, "CallMessageIncomingMissed"

    const v36, 0x7f0700f5

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 356
    :cond_4a
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    move/from16 v35, v0

    if-eqz v35, :cond_4b

    .line 357
    const-string/jumbo v35, "CallMessageIncomingDeclined"

    const v36, 0x7f0700f4

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 359
    :cond_4b
    const-string/jumbo v35, "CallMessageIncoming"

    const v36, 0x7f0700f3

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 380
    .end local v9    # "call":Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    .end local v19    # "isMissed":Z
    :cond_4c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    move/from16 v35, v0

    if-eqz v35, :cond_3

    .line 381
    const/16 v33, 0x0

    .line 382
    .local v33, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v32, v0

    .line 383
    .local v32, "uid":I
    if-eqz p2, :cond_4d

    .line 384
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 386
    .restart local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4d
    if-nez v18, :cond_4e

    .line 387
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 389
    :cond_4e
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0

    .line 392
    .end local v32    # "uid":I
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v35

    if-nez v35, :cond_60

    .line 393
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_50

    .line 394
    const-string/jumbo v35, "AttachPhoto"

    const v36, 0x7f0700b3

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 395
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v35

    if-nez v35, :cond_51

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v35, v0

    if-eqz v35, :cond_52

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    move/from16 v35, v0

    if-eqz v35, :cond_52

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    move/from16 v35, v0

    if-eqz v35, :cond_52

    .line 396
    :cond_51
    const-string/jumbo v35, "AttachVideo"

    const v36, 0x7f0700ba

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 397
    :cond_52
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v35

    if-eqz v35, :cond_53

    .line 398
    const-string/jumbo v35, "AttachAudio"

    const v36, 0x7f0700a6

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 399
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v35

    if-eqz v35, :cond_54

    .line 400
    const-string/jumbo v35, "AttachRound"

    const v36, 0x7f0700b5

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 401
    :cond_54
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v35, v0

    if-nez v35, :cond_55

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v35, v0

    if-eqz v35, :cond_56

    .line 402
    :cond_55
    const-string/jumbo v35, "AttachLocation"

    const v36, 0x7f0700af

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 403
    :cond_56
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v35, v0

    if-eqz v35, :cond_57

    .line 404
    const-string/jumbo v35, "AttachContact"

    const v36, 0x7f0700a9

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 405
    :cond_57
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v35, v0

    if-eqz v35, :cond_58

    .line 406
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 407
    :cond_58
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    move/from16 v35, v0

    if-eqz v35, :cond_59

    .line 408
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 409
    :cond_59
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    move/from16 v35, v0

    if-eqz v35, :cond_5a

    .line 410
    const-string/jumbo v35, "UnsupportedMedia"

    const v36, 0x7f07070b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 411
    :cond_5a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v35, v0

    if-eqz v35, :cond_3

    .line 412
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v35

    if-eqz v35, :cond_5c

    .line 413
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getStrickerChar()Ljava/lang/String;

    move-result-object v23

    .line 414
    .local v23, "sch":Ljava/lang/String;
    if-eqz v23, :cond_5b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_5b

    .line 415
    const-string/jumbo v35, "%s %s"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v23, v36, v37

    const/16 v37, 0x1

    const-string/jumbo v38, "AttachSticker"

    const v39, 0x7f0700b6

    invoke-static/range {v38 .. v39}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 417
    :cond_5b
    const-string/jumbo v35, "AttachSticker"

    const v36, 0x7f0700b6

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 419
    .end local v23    # "sch":Ljava/lang/String;
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v35

    if-eqz v35, :cond_5d

    .line 420
    const-string/jumbo v35, "AttachMusic"

    const v36, 0x7f0700b2

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 421
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v35

    if-eqz v35, :cond_5e

    .line 422
    const-string/jumbo v35, "AttachGif"

    const v36, 0x7f0700ac

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 424
    :cond_5e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v20

    .line 425
    .restart local v20    # "name":Ljava/lang/String;
    if-eqz v20, :cond_5f

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_5f

    .line 426
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 428
    :cond_5f
    const-string/jumbo v35, "AttachDocument"

    const v36, 0x7f0700aa

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 433
    .end local v20    # "name":Ljava/lang/String;
    :cond_60
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 455
    .restart local v11    # "dateDay":I
    .restart local v12    # "dateMonth":I
    .restart local v13    # "dateYear":I
    .restart local v22    # "rightNow":Ljava/util/Calendar;
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v35, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    goto/16 :goto_1

    .line 465
    :cond_62
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v21    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_2

    .line 467
    :cond_63
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 474
    .restart local v15    # "emojiOnly":[I
    :pswitch_0
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintOneEmoji:Landroid/text/TextPaint;

    .line 475
    .restart local v16    # "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x42000000    # 32.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 476
    .restart local v25    # "size":I
    goto/16 :goto_4

    .line 478
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v25    # "size":I
    :pswitch_1
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintTwoEmoji:Landroid/text/TextPaint;

    .line 479
    .restart local v16    # "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x41e00000    # 28.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 480
    .restart local v25    # "size":I
    goto/16 :goto_4

    .line 494
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v25    # "size":I
    :cond_64
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 496
    .end local v15    # "emojiOnly":[I
    .end local v21    # "paint":Landroid/text/TextPaint;
    :cond_65
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 497
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    .line 499
    return-void

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    .locals 1
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "generateLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "users":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$Chat;[I)V
    .locals 46
    .param p1, "event"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;
    .param p4, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p5, "mid"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p2, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p3, "messagesByDays":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v7, 0x3e8

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/MessageObject;->type:I

    .line 86
    const/16 v7, 0x34

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/MessageObject;->leftBound:I

    .line 502
    const/16 v26, 0x0

    .line 503
    .local v26, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:I

    if-lez v7, :cond_0

    .line 504
    if-nez v26, :cond_0

    .line 505
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v26

    .line 509
    :cond_0
    new-instance v37, Ljava/util/GregorianCalendar;

    invoke-direct/range {v37 .. v37}, Ljava/util/GregorianCalendar;-><init>()V

    .line 510
    .local v37, "rightNow":Ljava/util/Calendar;
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    int-to-long v8, v7

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 511
    const/4 v7, 0x6

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 512
    .local v16, "dateDay":I
    const/4 v7, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 513
    .local v20, "dateYear":I
    const/4 v7, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 514
    .local v17, "dateMonth":I
    const-string/jumbo v7, "%d_%02d_%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    .line 515
    const-string/jumbo v7, "%d_%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    .line 517
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 519
    .local v21, "dayArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v43, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct/range {v43 .. v43}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 520
    .local v43, "to_id":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, p4

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move-object/from16 v0, v43

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 522
    if-nez v21, :cond_1

    .line 523
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "dayArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .restart local v21    # "dayArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    new-instance v18, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    .line 526
    .local v18, "dateMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 527
    const/4 v7, 0x0

    move-object/from16 v0, v18

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 528
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    move-object/from16 v0, v18

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 529
    new-instance v19, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 530
    .local v19, "dateObj":Lorg/telegram/messenger/MessageObject;
    const/16 v7, 0xa

    move-object/from16 v0, v19

    iput v7, v0, Lorg/telegram/messenger/MessageObject;->type:I

    .line 531
    const/4 v7, 0x1

    move-object/from16 v0, v19

    iput v7, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 532
    const/4 v7, 0x1

    move-object/from16 v0, v19

    iput-boolean v7, v0, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    .line 533
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v18    # "dateMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v19    # "dateObj":Lorg/telegram/messenger/MessageObject;
    :cond_1
    const/4 v6, 0x0

    .line 537
    .local v6, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTitle;

    if-eqz v7, :cond_b

    .line 538
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTitle;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTitle;->new_value:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 539
    .local v42, "title":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_a

    .line 540
    const-string/jumbo v7, "EventLogEditedGroupTitle"

    const v8, 0x7f070292

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v42, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 873
    .end local v42    # "title":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v7, :cond_2

    .line 874
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 876
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 877
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 878
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 879
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v8, 0x0

    aget v9, p5, v8

    add-int/lit8 v10, v9, 0x1

    aput v10, p5, v8

    iput v9, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 880
    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 882
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 883
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 884
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, p4

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 885
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 886
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_3

    .line 887
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v9, -0x80000000

    or-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 890
    :cond_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->message:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v7, :cond_4

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->message:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    if-nez v7, :cond_4

    .line 891
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 894
    :cond_4
    if-eqz v6, :cond_6

    .line 895
    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 896
    const/4 v7, 0x0

    aget v8, p5, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, p5, v7

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 897
    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 898
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v8, -0x8001

    and-int/2addr v7, v8

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 899
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_5

    .line 900
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v8, -0x80000000

    or-int/2addr v7, v8

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 902
    :cond_5
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    invoke-direct/range {v5 .. v11}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;ZJ)V

    .line 903
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 905
    .end local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-nez v7, :cond_7

    .line 908
    const-string/jumbo v7, ""

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 911
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->setType()V

    .line 912
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->measureInlineBotButtons()V

    .line 914
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-le v7, v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 915
    :cond_8
    new-instance v7, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v7}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 916
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/VideoEditedInfo;->parseString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 917
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 923
    :cond_9
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    .line 926
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v7, :cond_5e

    .line 927
    sget-object v35, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 931
    .local v35, "paint":Landroid/text/TextPaint;
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    if-eqz v7, :cond_5f

    const/4 v7, 0x1

    new-array v0, v7, [I

    move-object/from16 v24, v0

    .line 932
    .local v24, "emojiOnly":[I
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual/range {v35 .. v35}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-static {v7, v8, v9, v10, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 933
    if-eqz v24, :cond_60

    const/4 v7, 0x0

    aget v7, v24, v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_60

    const/4 v7, 0x0

    aget v7, v24, v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_60

    .line 936
    const/4 v7, 0x0

    aget v7, v24, v7

    packed-switch v7, :pswitch_data_0

    .line 947
    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintThreeEmoji:Landroid/text/TextPaint;

    .line 948
    .local v25, "emojiPaint":Landroid/text/TextPaint;
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v39

    .line 951
    .local v39, "size":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v40

    check-cast v40, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 952
    .local v40, "spans":[Lorg/telegram/messenger/Emoji$EmojiSpan;
    if-eqz v40, :cond_60

    move-object/from16 v0, v40

    array-length v7, v0

    if-lez v7, :cond_60

    .line 953
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_5
    move-object/from16 v0, v40

    array-length v7, v0

    if-ge v4, v7, :cond_60

    .line 954
    aget-object v7, v40, v4

    invoke-virtual/range {v25 .. v25}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v7, v8, v0}, Lorg/telegram/messenger/Emoji$EmojiSpan;->replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V

    .line 953
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 542
    .end local v4    # "a":I
    .end local v24    # "emojiOnly":[I
    .end local v25    # "emojiPaint":Landroid/text/TextPaint;
    .end local v35    # "paint":Landroid/text/TextPaint;
    .end local v39    # "size":I
    .end local v40    # "spans":[Lorg/telegram/messenger/Emoji$EmojiSpan;
    .restart local v42    # "title":Ljava/lang/String;
    :cond_a
    const-string/jumbo v7, "EventLogEditedChannelTitle"

    const v8, 0x7f07028f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v42, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 544
    .end local v42    # "title":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangePhoto;

    if-eqz v7, :cond_f

    .line 545
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 546
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->new_photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    if-eqz v7, :cond_d

    .line 547
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 548
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_c

    .line 549
    const-string/jumbo v7, "EventLogRemovedWGroupPhoto"

    const v8, 0x7f0702bc

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 551
    :cond_c
    const-string/jumbo v7, "EventLogRemovedChannelPhoto"

    const v8, 0x7f0702ba

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 554
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 555
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 556
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 557
    .local v36, "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->new_photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v36

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 558
    const-string/jumbo v7, "s"

    move-object/from16 v0, v36

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 559
    const/16 v7, 0x50

    move-object/from16 v0, v36

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    move-object/from16 v0, v36

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 560
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    .end local v36    # "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 562
    .restart local v36    # "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->new_photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v36

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 563
    const-string/jumbo v7, "m"

    move-object/from16 v0, v36

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 564
    const/16 v7, 0x280

    move-object/from16 v0, v36

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    move-object/from16 v0, v36

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 565
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_e

    .line 568
    const-string/jumbo v7, "EventLogEditedGroupPhoto"

    const v8, 0x7f070291

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 570
    :cond_e
    const-string/jumbo v7, "EventLogEditedChannelPhoto"

    const v8, 0x7f07028e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 573
    .end local v36    # "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    :cond_f
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoin;

    if-eqz v7, :cond_11

    .line 574
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_10

    .line 575
    const-string/jumbo v7, "EventLogGroupJoined"

    const v8, 0x7f0702a3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 577
    :cond_10
    const-string/jumbo v7, "EventLogChannelJoined"

    const v8, 0x7f070288

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 579
    :cond_11
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantLeave;

    if-eqz v7, :cond_13

    .line 580
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 581
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 582
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    .line 583
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_12

    .line 584
    const-string/jumbo v7, "EventLogLeftGroup"

    const v8, 0x7f0702a8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 586
    :cond_12
    const-string/jumbo v7, "EventLogLeftChannel"

    const v8, 0x7f0702a7

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 588
    :cond_13
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantInvite;

    if-eqz v7, :cond_16

    .line 589
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 590
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 591
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v45

    .line 592
    .local v45, "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-ne v7, v8, :cond_15

    .line 593
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_14

    .line 594
    const-string/jumbo v7, "EventLogGroupJoined"

    const v8, 0x7f0702a3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 596
    :cond_14
    const-string/jumbo v7, "EventLogChannelJoined"

    const v8, 0x7f070288

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 599
    :cond_15
    const-string/jumbo v7, "EventLogAdded"

    const v8, 0x7f070283

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 600
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 602
    .end local v45    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_16
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    if-eqz v7, :cond_2a

    .line 603
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 605
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v45

    .line 606
    .restart local v45    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    const-string/jumbo v7, "EventLogPromoted"

    const v8, 0x7f0702af

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v41

    .line 607
    .local v41, "str":Ljava/lang/String;
    const-string/jumbo v7, "%1$s"

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    .line 608
    .local v33, "offset":I
    new-instance v38, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v33

    invoke-direct {v0, v1, v9, v2}, Lorg/telegram/messenger/MessageObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, v41

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    .local v38, "rights":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "\n"

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v32, v0

    .line 612
    .local v32, "o":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v29, v0

    .line 613
    .local v29, "n":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    if-nez v32, :cond_17

    .line 614
    new-instance v32, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .end local v32    # "o":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    invoke-direct/range {v32 .. v32}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;-><init>()V

    .line 616
    .restart local v32    # "o":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    :cond_17
    if-nez v29, :cond_18

    .line 617
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .end local v29    # "n":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;-><init>()V

    .line 619
    .restart local v29    # "n":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    :cond_18
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    if-eq v7, v8, :cond_19

    .line 620
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    if-eqz v7, :cond_21

    const/16 v7, 0x2b

    :goto_6
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_22

    const-string/jumbo v7, "EventLogPromotedChangeGroupInfo"

    const v8, 0x7f0702b4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_19
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_1b

    .line 624
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-eq v7, v8, :cond_1a

    .line 625
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-eqz v7, :cond_23

    const/16 v7, 0x2b

    :goto_8
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    const-string/jumbo v7, "EventLogPromotedPostMessages"

    const v8, 0x7f0702b8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_1a
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    if-eq v7, v8, :cond_1b

    .line 629
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    if-eqz v7, :cond_24

    const/16 v7, 0x2b

    :goto_9
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v7, "EventLogPromotedEditMessages"

    const v8, 0x7f0702b6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_1b
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    if-eq v7, v8, :cond_1c

    .line 634
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    if-eqz v7, :cond_25

    const/16 v7, 0x2b

    :goto_a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    const-string/jumbo v7, "EventLogPromotedDeleteMessages"

    const v8, 0x7f0702b5

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_1c
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    if-eq v7, v8, :cond_1d

    .line 638
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    if-eqz v7, :cond_26

    const/16 v7, 0x2b

    :goto_b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    const-string/jumbo v7, "EventLogPromotedAddAdmins"

    const v8, 0x7f0702b0

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_1d
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_1e

    .line 642
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    if-eq v7, v8, :cond_1e

    .line 643
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    if-eqz v7, :cond_27

    const/16 v7, 0x2b

    :goto_c
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    const-string/jumbo v7, "EventLogPromotedBanUsers"

    const v8, 0x7f0702b2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_1e
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    if-eq v7, v8, :cond_1f

    .line 648
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    if-eqz v7, :cond_28

    const/16 v7, 0x2b

    :goto_d
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    const-string/jumbo v7, "EventLogPromotedAddUsers"

    const v8, 0x7f0702b1

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_1f
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_20

    .line 652
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    if-eq v7, v8, :cond_20

    .line 653
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    if-eqz v7, :cond_29

    const/16 v7, 0x2b

    :goto_e
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    const-string/jumbo v7, "EventLogPromotedPinMessages"

    const v8, 0x7f0702b7

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_20
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 620
    :cond_21
    const/16 v7, 0x2d

    goto/16 :goto_6

    .line 621
    :cond_22
    const-string/jumbo v7, "EventLogPromotedChangeChannelInfo"

    const v8, 0x7f0702b3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7

    .line 625
    :cond_23
    const/16 v7, 0x2d

    goto/16 :goto_8

    .line 629
    :cond_24
    const/16 v7, 0x2d

    goto/16 :goto_9

    .line 634
    :cond_25
    const/16 v7, 0x2d

    goto/16 :goto_a

    .line 638
    :cond_26
    const/16 v7, 0x2d

    goto/16 :goto_b

    .line 643
    :cond_27
    const/16 v7, 0x2d

    goto/16 :goto_c

    .line 648
    :cond_28
    const/16 v7, 0x2d

    goto :goto_d

    .line 653
    :cond_29
    const/16 v7, 0x2d

    goto :goto_e

    .line 658
    .end local v29    # "n":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .end local v32    # "o":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .end local v33    # "offset":I
    .end local v38    # "rights":Ljava/lang/StringBuilder;
    .end local v41    # "str":Ljava/lang/String;
    .end local v45    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2a
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;

    if-eqz v7, :cond_49

    .line 659
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 660
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v45

    .line 661
    .restart local v45    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v32, v0

    .line 662
    .local v32, "o":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v29, v0

    .line 663
    .local v29, "n":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_46

    if-eqz v29, :cond_2b

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-eqz v7, :cond_2b

    if-eqz v29, :cond_46

    if-eqz v32, :cond_46

    move-object/from16 v0, v29

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    move-object/from16 v0, v32

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    if-eq v7, v8, :cond_46

    .line 666
    :cond_2b
    if-eqz v29, :cond_40

    move-object/from16 v0, v29

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(I)Z

    move-result v7

    if-nez v7, :cond_40

    .line 667
    const-string/jumbo v14, ""

    .line 668
    .local v14, "bannedDuration":Ljava/lang/String;
    move-object/from16 v0, v29

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    sub-int v23, v7, v8

    .line 669
    .local v23, "duration":I
    div-int/lit8 v7, v23, 0x3c

    div-int/lit8 v7, v7, 0x3c

    div-int/lit8 v22, v7, 0x18

    .line 670
    .local v22, "days":I
    mul-int/lit8 v7, v22, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x18

    sub-int v23, v23, v7

    .line 671
    div-int/lit8 v7, v23, 0x3c

    div-int/lit8 v27, v7, 0x3c

    .line 672
    .local v27, "hours":I
    mul-int/lit8 v7, v27, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    sub-int v23, v23, v7

    .line 673
    div-int/lit8 v28, v23, 0x3c

    .line 674
    .local v28, "minutes":I
    const/4 v15, 0x0

    .line 675
    .local v15, "count":I
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_f
    const/4 v7, 0x3

    if-ge v4, v7, :cond_2f

    .line 676
    const/4 v12, 0x0

    .line 677
    .local v12, "addStr":Ljava/lang/String;
    if-nez v4, :cond_3d

    .line 678
    if-eqz v22, :cond_2c

    .line 679
    const-string/jumbo v7, "Days"

    move/from16 v0, v22

    invoke-static {v7, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 680
    add-int/lit8 v15, v15, 0x1

    .line 693
    :cond_2c
    :goto_10
    if-eqz v12, :cond_2e

    .line 694
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2d

    .line 695
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 697
    :cond_2d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 699
    :cond_2e
    const/4 v7, 0x2

    if-ne v15, v7, :cond_3f

    .line 706
    .end local v4    # "a":I
    .end local v12    # "addStr":Ljava/lang/String;
    .end local v15    # "count":I
    .end local v22    # "days":I
    .end local v23    # "duration":I
    .end local v27    # "hours":I
    .end local v28    # "minutes":I
    :cond_2f
    :goto_11
    const-string/jumbo v7, "EventLogRestrictedUntil"

    const v8, 0x7f0702c2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v41

    .line 707
    .restart local v41    # "str":Ljava/lang/String;
    const-string/jumbo v7, "%1$s"

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    .line 708
    .restart local v33    # "offset":I
    new-instance v38, Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v33

    invoke-direct {v0, v1, v9, v2}, Lorg/telegram/messenger/MessageObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v14, v7, v8

    move-object/from16 v0, v41

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    .restart local v38    # "rights":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 710
    .local v13, "added":Z
    if-nez v32, :cond_30

    .line 711
    new-instance v32, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .end local v32    # "o":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    invoke-direct/range {v32 .. v32}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;-><init>()V

    .line 713
    .restart local v32    # "o":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    :cond_30
    if-nez v29, :cond_31

    .line 714
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .end local v29    # "n":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;-><init>()V

    .line 716
    .restart local v29    # "n":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    :cond_31
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-eq v7, v8, :cond_33

    .line 717
    if-nez v13, :cond_32

    .line 718
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    const/4 v13, 0x1

    .line 721
    :cond_32
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v7, :cond_41

    const/16 v7, 0x2b

    :goto_12
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    const-string/jumbo v7, "EventLogRestrictedReadMessages"

    const v8, 0x7f0702bd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_33
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-eq v7, v8, :cond_35

    .line 725
    if-nez v13, :cond_34

    .line 726
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    const/4 v13, 0x1

    .line 729
    :cond_34
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-nez v7, :cond_42

    const/16 v7, 0x2b

    :goto_13
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    const-string/jumbo v7, "EventLogRestrictedSendMessages"

    const v8, 0x7f0702c0

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_35
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-ne v7, v8, :cond_36

    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    if-ne v7, v8, :cond_36

    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    if-ne v7, v8, :cond_36

    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    if-eq v7, v8, :cond_38

    .line 733
    :cond_36
    if-nez v13, :cond_37

    .line 734
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    const/4 v13, 0x1

    .line 737
    :cond_37
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-nez v7, :cond_43

    const/16 v7, 0x2b

    :goto_14
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    const-string/jumbo v7, "EventLogRestrictedSendStickers"

    const v8, 0x7f0702c1

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_38
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-eq v7, v8, :cond_3a

    .line 741
    if-nez v13, :cond_39

    .line 742
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 743
    const/4 v13, 0x1

    .line 745
    :cond_39
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v7, :cond_44

    const/16 v7, 0x2b

    :goto_15
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 746
    const-string/jumbo v7, "EventLogRestrictedSendMedia"

    const v8, 0x7f0702bf

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_3a
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    move-object/from16 v0, v29

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-eq v7, v8, :cond_3c

    .line 749
    if-nez v13, :cond_3b

    .line 750
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    :cond_3b
    const/16 v7, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-nez v7, :cond_45

    const/16 v7, 0x2b

    :goto_16
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    const-string/jumbo v7, "EventLogRestrictedSendEmbed"

    const v8, 0x7f0702be

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_3c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 682
    .end local v13    # "added":Z
    .end local v33    # "offset":I
    .end local v38    # "rights":Ljava/lang/StringBuilder;
    .end local v41    # "str":Ljava/lang/String;
    .restart local v4    # "a":I
    .restart local v12    # "addStr":Ljava/lang/String;
    .restart local v15    # "count":I
    .restart local v22    # "days":I
    .restart local v23    # "duration":I
    .restart local v27    # "hours":I
    .restart local v28    # "minutes":I
    :cond_3d
    const/4 v7, 0x1

    if-ne v4, v7, :cond_3e

    .line 683
    if-eqz v27, :cond_2c

    .line 684
    const-string/jumbo v7, "Hours"

    move/from16 v0, v27

    invoke-static {v7, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 685
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_10

    .line 688
    :cond_3e
    if-eqz v28, :cond_2c

    .line 689
    const-string/jumbo v7, "Minutes"

    move/from16 v0, v28

    invoke-static {v7, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 690
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_10

    .line 675
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 704
    .end local v4    # "a":I
    .end local v12    # "addStr":Ljava/lang/String;
    .end local v14    # "bannedDuration":Ljava/lang/String;
    .end local v15    # "count":I
    .end local v22    # "days":I
    .end local v23    # "duration":I
    .end local v27    # "hours":I
    .end local v28    # "minutes":I
    :cond_40
    const-string/jumbo v7, "UserRestrictionsUntilForever"

    const v8, 0x7f07072a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "bannedDuration":Ljava/lang/String;
    goto/16 :goto_11

    .line 721
    .restart local v13    # "added":Z
    .restart local v33    # "offset":I
    .restart local v38    # "rights":Ljava/lang/StringBuilder;
    .restart local v41    # "str":Ljava/lang/String;
    :cond_41
    const/16 v7, 0x2d

    goto/16 :goto_12

    .line 729
    :cond_42
    const/16 v7, 0x2d

    goto/16 :goto_13

    .line 737
    :cond_43
    const/16 v7, 0x2d

    goto/16 :goto_14

    .line 745
    :cond_44
    const/16 v7, 0x2d

    goto/16 :goto_15

    .line 752
    :cond_45
    const/16 v7, 0x2d

    goto :goto_16

    .line 758
    .end local v13    # "added":Z
    .end local v14    # "bannedDuration":Ljava/lang/String;
    .end local v33    # "offset":I
    .end local v38    # "rights":Ljava/lang/StringBuilder;
    .end local v41    # "str":Ljava/lang/String;
    :cond_46
    if-eqz v29, :cond_48

    if-eqz v32, :cond_47

    move-object/from16 v0, v29

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-eqz v7, :cond_48

    .line 759
    :cond_47
    const-string/jumbo v7, "EventLogChannelRestricted"

    const v8, 0x7f070289

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v41

    .line 763
    .restart local v41    # "str":Ljava/lang/String;
    :goto_17
    const-string/jumbo v7, "%1$s"

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    .line 764
    .restart local v33    # "offset":I
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v33

    invoke-direct {v0, v1, v9, v2}, Lorg/telegram/messenger/MessageObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, v41

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 761
    .end local v33    # "offset":I
    .end local v41    # "str":Ljava/lang/String;
    :cond_48
    const-string/jumbo v7, "EventLogChannelUnrestricted"

    const v8, 0x7f07028a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v41

    .restart local v41    # "str":Ljava/lang/String;
    goto :goto_17

    .line 766
    .end local v29    # "n":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    .end local v32    # "o":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    .end local v41    # "str":Ljava/lang/String;
    .end local v45    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_49
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionUpdatePinned;

    if-eqz v7, :cond_4b

    .line 767
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->message:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    if-eqz v7, :cond_4a

    .line 768
    const-string/jumbo v7, "EventLogUnpinnedMessages"

    const v8, 0x7f0702c8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 770
    :cond_4a
    const-string/jumbo v7, "EventLogPinnedMessages"

    const v8, 0x7f0702ac

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 772
    :cond_4b
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSignatures;

    if-eqz v7, :cond_4d

    .line 773
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSignatures;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSignatures;->new_value:Z

    if-eqz v7, :cond_4c

    .line 774
    const-string/jumbo v7, "EventLogToggledSignaturesOn"

    const v8, 0x7f0702c7

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 776
    :cond_4c
    const-string/jumbo v7, "EventLogToggledSignaturesOff"

    const v8, 0x7f0702c6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 778
    :cond_4d
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleInvites;

    if-eqz v7, :cond_4f

    .line 779
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleInvites;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleInvites;->new_value:Z

    if-eqz v7, :cond_4e

    .line 780
    const-string/jumbo v7, "EventLogToggledInvitesOn"

    const v8, 0x7f0702c5

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 782
    :cond_4e
    const-string/jumbo v7, "EventLogToggledInvitesOff"

    const v8, 0x7f0702c4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 784
    :cond_4f
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    if-eqz v7, :cond_50

    .line 785
    const-string/jumbo v7, "EventLogDeletedMessages"

    const v8, 0x7f07028b

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 786
    :cond_50
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;

    if-eqz v7, :cond_53

    .line 787
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_51

    const-string/jumbo v7, "EventLogEditedGroupDescription"

    const v8, 0x7f070290

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_18
    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 788
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 789
    .restart local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 790
    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 791
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 792
    move-object/from16 v0, v43

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 793
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 794
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;->new_value:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 795
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;->prev_value:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 796
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 797
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 798
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const/16 v8, 0xa

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 799
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, ""

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->display_url:Ljava/lang/String;

    .line 800
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, ""

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 801
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, "EventLogPreviousGroupDescription"

    const v9, 0x7f0702ad

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 802
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;->prev_value:Ljava/lang/String;

    iput-object v7, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    goto/16 :goto_0

    .line 787
    :cond_51
    const-string/jumbo v7, "EventLogEditedChannelDescription"

    const v8, 0x7f07028d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_18

    .line 804
    :cond_52
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    .line 806
    :cond_53
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;

    if-eqz v7, :cond_59

    .line 807
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;->new_value:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 808
    .local v30, "newLink":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 809
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_54

    const-string/jumbo v7, "EventLogChangedGroupLink"

    const v8, 0x7f070287

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_19
    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 813
    :goto_1a
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 814
    .restart local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 815
    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 816
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 817
    move-object/from16 v0, v43

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 818
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 819
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 820
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 824
    :goto_1b
    new-instance v44, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    invoke-direct/range {v44 .. v44}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;-><init>()V

    .line 825
    .local v44, "url":Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;
    const/4 v7, 0x0

    move-object/from16 v0, v44

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;->offset:I

    .line 826
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, v44

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;->length:I

    .line 827
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;->prev_value:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_58

    .line 829
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 830
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 831
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const/16 v8, 0xa

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 832
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, ""

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->display_url:Ljava/lang/String;

    .line 833
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, ""

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 834
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, "EventLogPreviousLink"

    const v9, 0x7f0702ae

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 835
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "https://"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;->prev_value:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    goto/16 :goto_0

    .line 809
    .end local v44    # "url":Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;
    :cond_54
    const-string/jumbo v7, "EventLogChangedChannelLink"

    const v8, 0x7f070286

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_19

    .line 811
    :cond_55
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_56

    const-string/jumbo v7, "EventLogRemovedGroupLink"

    const v8, 0x7f0702bb

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_1c
    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1a

    :cond_56
    const-string/jumbo v7, "EventLogRemovedChannelLink"

    const v8, 0x7f0702b9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1c

    .line 822
    :cond_57
    const-string/jumbo v7, ""

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_1b

    .line 837
    .restart local v44    # "url":Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;
    :cond_58
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    .line 839
    .end local v30    # "newLink":Ljava/lang/String;
    .end local v44    # "url":Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;
    :cond_59
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;

    if-eqz v7, :cond_5c

    .line 840
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    .end local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 841
    .restart local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 842
    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 843
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 844
    move-object/from16 v0, v43

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 845
    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 846
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;->new_message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v31, v0

    .line 847
    .local v31, "newMessage":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;->prev_message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v34, v0

    .line 848
    .local v34, "oldMessage":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v31

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_5b

    move-object/from16 v0, v31

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v7, :cond_5b

    move-object/from16 v0, v31

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v7, :cond_5b

    move-object/from16 v0, v31

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 849
    const-string/jumbo v7, "EventLogEditedCaption"

    const v8, 0x7f07028c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 850
    move-object/from16 v0, v31

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 851
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 852
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, "EventLogOriginalCaption"

    const v9, 0x7f0702a9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 853
    move-object/from16 v0, v34

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 854
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, "EventLogOriginalCaptionEmpty"

    const v9, 0x7f0702aa

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    .line 866
    :goto_1d
    move-object/from16 v0, v31

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 867
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const/16 v8, 0xa

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 868
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, ""

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->display_url:Ljava/lang/String;

    .line 869
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, ""

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    goto/16 :goto_0

    .line 856
    :cond_5a
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v34

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    goto :goto_1d

    .line 859
    :cond_5b
    const-string/jumbo v7, "EventLogEditedMessages"

    const v8, 0x7f070293

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v8, v1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 860
    move-object/from16 v0, v31

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 861
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 862
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 863
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string/jumbo v8, "EventLogOriginalMessages"

    const v9, 0x7f0702ab

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 864
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v34

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    goto :goto_1d

    .line 871
    .end local v31    # "newMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v34    # "oldMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsupported "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 919
    :cond_5d
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v8

    iput-boolean v8, v7, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    goto/16 :goto_1

    .line 929
    :cond_5e
    sget-object v35, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v35    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_2

    .line 931
    :cond_5f
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 938
    .restart local v24    # "emojiOnly":[I
    :pswitch_0
    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintOneEmoji:Landroid/text/TextPaint;

    .line 939
    .restart local v25    # "emojiPaint":Landroid/text/TextPaint;
    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v39

    .line 940
    .restart local v39    # "size":I
    goto/16 :goto_4

    .line 942
    .end local v25    # "emojiPaint":Landroid/text/TextPaint;
    .end local v39    # "size":I
    :pswitch_1
    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintTwoEmoji:Landroid/text/TextPaint;

    .line 943
    .restart local v25    # "emojiPaint":Landroid/text/TextPaint;
    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v39

    .line 944
    .restart local v39    # "size":I
    goto/16 :goto_4

    .line 958
    .end local v25    # "emojiPaint":Landroid/text/TextPaint;
    .end local v39    # "size":I
    :cond_60
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 959
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 960
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 961
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    .line 962
    return-void

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static addLinks(ZLjava/lang/CharSequence;)V
    .locals 1
    .param p0, "isOut"    # Z
    .param p1, "messageText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1659
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;Z)V

    .line 1660
    return-void
.end method

.method public static addLinks(ZLjava/lang/CharSequence;Z)V
    .locals 4
    .param p0, "isOut"    # Z
    .param p1, "messageText"    # Ljava/lang/CharSequence;
    .param p2, "botCommands"    # Z

    .prologue
    .line 1663
    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1664
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 1666
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/MessageObject;->addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V

    .line 1679
    :cond_0
    return-void

    .line 1667
    :catch_0
    move-exception v1

    .line 1668
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1672
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1673
    :catch_1
    move-exception v1

    .line 1674
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V
    .locals 9
    .param p0, "isOut"    # Z
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "botCommands"    # Z

    .prologue
    const/16 v8, 0x2f

    .line 1630
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    if-nez v6, :cond_0

    .line 1631
    const-string/jumbo v6, "(^|\\s)/[a-zA-Z@\\d_]{1,255}|(^|\\s)@[a-zA-Z\\d_]{1,32}|(^|\\s)#[\\w\\.]+"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    .line 1633
    :cond_0
    sget-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1634
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1635
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 1636
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 1637
    .local v2, "end":I
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_2

    .line 1638
    add-int/lit8 v4, v4, 0x1

    .line 1640
    :cond_2
    const/4 v5, 0x0

    .line 1641
    .local v5, "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_5

    .line 1642
    if-eqz p2, :cond_3

    .line 1643
    new-instance v5, Lorg/telegram/ui/Components/URLSpanBotCommand;

    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lorg/telegram/ui/Components/URLSpanBotCommand;-><init>(Ljava/lang/String;Z)V

    .line 1648
    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :cond_3
    :goto_1
    if-eqz v5, :cond_1

    .line 1649
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v5, v4, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1652
    .end local v2    # "end":I
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "start":I
    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :catch_0
    move-exception v1

    .line 1653
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1655
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 1646
    .restart local v2    # "end":I
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v4    # "start":I
    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :cond_5
    :try_start_1
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    goto :goto_1
.end method

.method public static canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2659
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_1

    .line 2668
    :cond_0
    :goto_0
    return v0

    .line 2662
    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_2

    .line 2663
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2665
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2666
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-eq v2, v0, :cond_4

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    if-nez v2, :cond_0

    :cond_3
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_4

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-gtz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 2668
    :cond_5
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v1, v0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public static canEditMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2620
    if-eqz p0, :cond_2

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_3

    .line 2651
    :cond_2
    :goto_0
    return v1

    .line 2623
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_4

    move v1, v0

    .line 2624
    goto :goto_0

    .line 2626
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    if-gt v2, v3, :cond_2

    .line 2629
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_9

    .line 2630
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_8

    :cond_5
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_6

    .line 2631
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v2, :cond_8

    :cond_7
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    .line 2636
    :cond_9
    if-nez p1, :cond_a

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_a

    .line 2637
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2638
    if-eqz p1, :cond_2

    .line 2642
    :cond_a
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v2, :cond_d

    :cond_b
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_c

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    if-eqz v2, :cond_2

    :cond_c
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v2, :cond_2

    .line 2643
    :cond_d
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v2, :cond_f

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_e

    .line 2644
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_f

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_f

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v2, :cond_2

    :cond_f
    move v1, v0

    .line 2648
    goto/16 :goto_0
.end method

.method private static containsUrls(Ljava/lang/CharSequence;)Z
    .locals 14
    .param p0, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v13, 0x2e

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/16 v11, 0x20

    const/4 v7, 0x1

    .line 1529
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v9, v12, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x5000

    if-le v9, v10, :cond_2

    :cond_0
    move v7, v8

    .line 1585
    :cond_1
    :goto_0
    return v7

    .line 1533
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1535
    .local v5, "length":I
    const/4 v1, 0x0

    .line 1536
    .local v1, "digitsInRow":I
    const/4 v6, 0x0

    .line 1537
    .local v6, "schemeSequence":I
    const/4 v2, 0x0

    .line 1539
    .local v2, "dotSequence":I
    const/4 v4, 0x0

    .line 1541
    .local v4, "lastChar":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_10

    .line 1542
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1544
    .local v0, "c":C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_7

    const/16 v9, 0x39

    if-gt v0, v9, :cond_7

    .line 1545
    add-int/lit8 v1, v1, 0x1

    .line 1546
    const/4 v9, 0x6

    if-ge v1, v9, :cond_1

    .line 1549
    const/4 v6, 0x0

    .line 1550
    const/4 v2, 0x0

    .line 1554
    :cond_3
    :goto_2
    const/16 v9, 0x40

    if-eq v0, v9, :cond_4

    const/16 v9, 0x23

    if-eq v0, v9, :cond_4

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_5

    :cond_4
    if-eqz v3, :cond_1

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_1

    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    .line 1557
    :cond_6
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_a

    .line 1558
    if-nez v6, :cond_9

    .line 1559
    const/4 v6, 0x1

    .line 1583
    :goto_3
    move v4, v0

    .line 1541
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1551
    :cond_7
    if-eq v0, v11, :cond_8

    if-gtz v1, :cond_3

    .line 1552
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 1561
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 1563
    :cond_a
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_c

    .line 1564
    if-eq v6, v12, :cond_1

    .line 1567
    if-ne v6, v7, :cond_b

    .line 1568
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1570
    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    .line 1572
    :cond_c
    if-ne v0, v13, :cond_e

    .line 1573
    if-nez v2, :cond_d

    if-eq v4, v11, :cond_d

    .line 1574
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1576
    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    .line 1578
    :cond_e
    if-eq v0, v11, :cond_f

    if-ne v4, v13, :cond_f

    if-eq v2, v7, :cond_1

    .line 1581
    :cond_f
    const/4 v2, 0x0

    goto :goto_3

    .end local v0    # "c":C
    :cond_10
    move v7, v8

    .line 1585
    goto :goto_0
.end method

.method public static getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2089
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v0, :cond_2

    .line 2091
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-gez v0, :cond_1

    .line 2092
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 2104
    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    return-wide v0

    .line 2094
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0

    .line 2096
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_3

    .line 2097
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0

    .line 2098
    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2099
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0

    .line 2101
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0
.end method

.method public static getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v1, 0x0

    .line 2297
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    .line 2298
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2299
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_0

    .line 2300
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    if-eqz v2, :cond_2

    .line 2307
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    :goto_0
    return-object v1

    .line 2303
    .restart local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_0
.end method

.method public static getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2017
    const/4 v0, 0x0

    .line 2018
    .local v0, "flags":I
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    if-nez v1, :cond_0

    .line 2019
    or-int/lit8 v0, v0, 0x1

    .line 2021
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    if-nez v1, :cond_1

    .line 2022
    or-int/lit8 v0, v0, 0x2

    .line 2024
    :cond_1
    return v0
.end method

.method private getUserName(Lorg/telegram/tgnet/TLRPC$User;Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 966
    .local p2, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    if-nez p1, :cond_3

    .line 967
    const-string/jumbo v1, ""

    .line 971
    .local v1, "name":Ljava/lang/String;
    :goto_0
    if-ltz p3, :cond_0

    .line 972
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;-><init>()V

    .line 973
    .local v0, "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    .line 974
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->offset:I

    .line 975
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->length:I

    .line 976
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    .end local v0    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;
    :cond_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 979
    if-ltz p3, :cond_1

    .line 980
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;-><init>()V

    .line 981
    .restart local v0    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    .line 982
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->offset:I

    .line 983
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->length:I

    .line 984
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    .end local v0    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;
    :cond_1
    const-string/jumbo v2, "%1$s (@%2$s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 988
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-object v1

    .line 969
    :cond_3
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isContentUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2069
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    return v0
.end method

.method public static isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2600
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGameMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2289
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    return v0
.end method

.method public static isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 2
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1262
    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .locals 2
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 2192
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInvoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2293
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    return v0
.end method

.method public static isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2164
    if-eqz p0, :cond_1

    .line 2165
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2166
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2167
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask:Z

    if-eqz v2, :cond_0

    .line 2168
    const/4 v2, 0x1

    .line 2172
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1
    return v2

    .line 2165
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2172
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isMaskMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2250
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2612
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMegagroup(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2077
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v2, 0x0

    .line 2200
    if-eqz p0, :cond_0

    .line 2201
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2202
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2203
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_1

    .line 2204
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 2208
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    return v2

    .line 2201
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2254
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 2257
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 8
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v7, 0x500

    .line 1286
    if-eqz p0, :cond_3

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v6, "video/mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1287
    const/4 v4, 0x0

    .line 1288
    .local v4, "width":I
    const/4 v3, 0x0

    .line 1289
    .local v3, "height":I
    const/4 v1, 0x0

    .line 1290
    .local v1, "animated":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1291
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1292
    .local v2, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v5, :cond_1

    .line 1293
    const/4 v1, 0x1

    .line 1290
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1294
    :cond_1
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_0

    .line 1295
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 1296
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    goto :goto_1

    .line 1299
    .end local v2    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    if-eqz v1, :cond_3

    if-gt v4, v7, :cond_3

    if-gt v3, v7, :cond_3

    .line 1300
    const/4 v5, 0x1

    .line 1303
    .end local v0    # "a":I
    .end local v1    # "animated":Z
    .end local v3    # "height":I
    .end local v4    # "width":I
    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static isNewGifMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2275
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 2276
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 2278
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2081
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    return v0
.end method

.method public static isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 8
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v7, 0x500

    .line 1266
    if-eqz p0, :cond_2

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v6, "video/mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1267
    const/4 v4, 0x0

    .line 1268
    .local v4, "width":I
    const/4 v2, 0x0

    .line 1269
    .local v2, "height":I
    const/4 v3, 0x0

    .line 1270
    .local v3, "round":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1271
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1272
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_0

    .line 1273
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 1274
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 1275
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->round_message:Z

    .line 1270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1278
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    if-eqz v3, :cond_2

    if-gt v4, v7, :cond_2

    if-gt v2, v7, :cond_2

    .line 1279
    const/4 v5, 0x1

    .line 1282
    .end local v0    # "a":I
    .end local v2    # "height":I
    .end local v3    # "round":Z
    .end local v4    # "width":I
    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2261
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 2264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSecretPhotoOrVideo(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2045
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v0, :cond_3

    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_2

    .line 2046
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2152
    if-eqz p0, :cond_1

    .line 2153
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2154
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2155
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    .line 2156
    const/4 v2, 0x1

    .line 2160
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1
    return v2

    .line 2153
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2160
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2246
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2065
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    return v0
.end method

.method public static isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 9
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v8, 0x500

    const/4 v6, 0x0

    .line 2212
    if-eqz p0, :cond_0

    .line 2213
    const/4 v3, 0x0

    .line 2214
    .local v3, "isAnimated":Z
    const/4 v4, 0x0

    .line 2215
    .local v4, "isVideo":Z
    const/4 v5, 0x0

    .line 2216
    .local v5, "width":I
    const/4 v2, 0x0

    .line 2217
    .local v2, "height":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 2218
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2219
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v7, :cond_3

    .line 2220
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->round_message:Z

    if-eqz v7, :cond_1

    .line 2235
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v2    # "height":I
    .end local v3    # "isAnimated":Z
    .end local v4    # "isVideo":Z
    .end local v5    # "width":I
    :cond_0
    :goto_1
    return v6

    .line 2223
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v2    # "height":I
    .restart local v3    # "isAnimated":Z
    .restart local v4    # "isVideo":Z
    .restart local v5    # "width":I
    :cond_1
    const/4 v4, 0x1

    .line 2224
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 2225
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 2217
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2226
    :cond_3
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v7, :cond_2

    .line 2227
    const/4 v3, 0x1

    goto :goto_2

    .line 2230
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_4
    if-eqz v3, :cond_6

    if-gt v5, v8, :cond_5

    if-le v2, v8, :cond_6

    .line 2231
    :cond_5
    const/4 v3, 0x0

    .line 2233
    :cond_6
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    const/4 v6, 0x1

    goto :goto_1
.end method

.method public static isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2282
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 2285
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .locals 2
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 2196
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2176
    if-eqz p0, :cond_1

    .line 2177
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2178
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2179
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v2, :cond_0

    .line 2180
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 2184
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1
    return v2

    .line 2177
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2184
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2268
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 2271
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .locals 2
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 2188
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V
    .locals 3
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2060
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 2061
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 2062
    return-void

    :cond_0
    move v0, v2

    .line 2060
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2061
    goto :goto_1
.end method

.method public static shouldEncryptPhotoOrVideo(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2036
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v0, :cond_3

    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_2

    .line 2037
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyNewText()V
    .locals 6

    .prologue
    .line 992
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 995
    :cond_0
    const/4 v0, 0x0

    .line 996
    .local v0, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 997
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 999
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1001
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_2

    .line 1002
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 1006
    .local v1, "paint":Landroid/text/TextPaint;
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1007
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 1004
    .end local v1    # "paint":Landroid/text/TextPaint;
    :cond_2
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v1    # "paint":Landroid/text/TextPaint;
    goto :goto_1
.end method

.method public canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 2655
    iget-wide v0, p0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 2616
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    return v0
.end method

.method public checkLayout()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1213
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 1238
    :goto_0
    return v3

    .line 1216
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    if-eqz v5, :cond_2

    .line 1217
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v1

    .line 1218
    .local v1, "newMinSize":I
    :goto_1
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 1219
    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 1222
    .end local v1    # "newMinSize":I
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    if-nez v5, :cond_6

    .line 1223
    iput-boolean v3, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1226
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1229
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v5, :cond_5

    .line 1230
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 1234
    .local v2, "paint":Landroid/text/TextPaint;
    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5, v6, v7, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1235
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 1217
    .end local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_4
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 1232
    .restart local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto :goto_2

    .end local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_6
    move v3, v4

    .line 1238
    goto :goto_0
.end method

.method public checkMediaExistance()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2689
    const/4 v0, 0x0

    .line 2690
    .local v0, "cacheFile":Ljava/io/File;
    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 2691
    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2692
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v5, v7, :cond_2

    .line 2693
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2694
    .local v1, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_1

    .line 2695
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    .line 2696
    .local v4, "file":Ljava/io/File;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2697
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".enc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2699
    :cond_0
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v5, :cond_1

    .line 2700
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2731
    .end local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2703
    :cond_2
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v5, v8, :cond_3

    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-eq v5, v6, :cond_3

    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 2704
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 2705
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2706
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 2708
    .end local v3    # "f":Ljava/io/File;
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    if-nez v5, :cond_1

    .line 2709
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    .line 2710
    .restart local v4    # "file":Ljava/io/File;
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v5, v8, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2711
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".enc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2713
    :cond_5
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v5, :cond_1

    .line 2714
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto/16 :goto_0

    .line 2718
    .end local v4    # "file":Ljava/io/File;
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 2719
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v2, :cond_7

    .line 2720
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto/16 :goto_0

    .line 2721
    :cond_7
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v5, :cond_1

    .line 2722
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2723
    .restart local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_1

    .line 2726
    if-eqz v1, :cond_1

    .line 2727
    invoke-static {v1, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto/16 :goto_0
.end method

.method public generateCaption()V
    .locals 5

    .prologue
    .line 1612
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1626
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1616
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 1617
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V

    goto :goto_0

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 7
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1011
    if-nez p1, :cond_0

    .line 1012
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v1, :cond_0

    .line 1013
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 1016
    :cond_0
    const/4 v0, 0x0

    .line 1017
    .local v0, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v1, :cond_1

    .line 1018
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 1020
    :cond_1
    if-nez v0, :cond_3

    .line 1021
    if-eqz p1, :cond_2

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1022
    const-string/jumbo v1, "ActionYouScored"

    const v2, 0x7f070044

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1034
    :goto_0
    return-void

    .line 1024
    :cond_2
    const-string/jumbo v1, "ActionUserScored"

    const v2, 0x7f07003b

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1027
    :cond_3
    if-eqz p1, :cond_4

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1028
    const-string/jumbo v1, "ActionYouScoredInGame"

    const v2, 0x7f070045

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1032
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const-string/jumbo v2, "un2"

    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1030
    :cond_4
    const-string/jumbo v1, "ActionUserScoredInGame"

    const v2, 0x7f07003c

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 47
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 1682
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return-void

    .line 1686
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->generateLinkDescription()V

    .line 1687
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 1688
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v3, :cond_8

    .line 1692
    const/16 v25, 0x0

    .line 1693
    .local v25, "hasEntities":Z
    const/16 v16, 0x0

    .local v16, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 1694
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-nez v3, :cond_7

    .line 1695
    const/16 v25, 0x1

    .line 1703
    .end local v16    # "a":I
    :cond_2
    :goto_2
    if-nez v25, :cond_a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old2;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old3;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old4;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v3, :cond_4

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v3, :cond_a

    :cond_4
    const/16 v46, 0x1

    .line 1716
    .local v46, "useManualParse":Z
    :goto_3
    if-eqz v46, :cond_b

    .line 1717
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v3, v6}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 1728
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_20

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    check-cast v40, Landroid/text/Spannable;

    .line 1730
    .local v40, "spannable":Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1731
    .local v20, "count":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/text/style/URLSpan;

    .line 1732
    .local v41, "spans":[Landroid/text/style/URLSpan;
    const/16 v16, 0x0

    .restart local v16    # "a":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_20

    .line 1733
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 1734
    .local v24, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-lez v3, :cond_6

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ltz v3, :cond_6

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_c

    .line 1732
    :cond_6
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1693
    .end local v20    # "count":I
    .end local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v40    # "spannable":Landroid/text/Spannable;
    .end local v41    # "spans":[Landroid/text/style/URLSpan;
    .end local v46    # "useManualParse":Z
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1700
    .end local v16    # "a":I
    .end local v25    # "hasEntities":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v25, 0x1

    .restart local v25    # "hasEntities":Z
    :goto_7
    goto/16 :goto_2

    .end local v25    # "hasEntities":Z
    :cond_9
    const/16 v25, 0x0

    goto :goto_7

    .line 1713
    .restart local v25    # "hasEntities":Z
    :cond_a
    const/16 v46, 0x0

    goto/16 :goto_3

    .line 1719
    .restart local v46    # "useManualParse":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v6, 0xc8

    if-ge v3, v6, :cond_5

    .line 1721
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    const/4 v6, 0x4

    invoke-static {v3, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1722
    :catch_0
    move-exception v22

    .line 1723
    .local v22, "e":Ljava/lang/Throwable;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1736
    .end local v22    # "e":Ljava/lang/Throwable;
    .restart local v16    # "a":I
    .restart local v20    # "count":I
    .restart local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v40    # "spannable":Landroid/text/Spannable;
    .restart local v41    # "spans":[Landroid/text/style/URLSpan;
    :cond_c
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v3, v6, :cond_d

    .line 1737
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v24

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 1739
    :cond_d
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    if-nez v3, :cond_e

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    if-nez v3, :cond_e

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    if-nez v3, :cond_e

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-nez v3, :cond_e

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-nez v3, :cond_e

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v3, :cond_13

    .line 1745
    :cond_e
    if-eqz v41, :cond_13

    move-object/from16 v0, v41

    array-length v3, v0

    if-lez v3, :cond_13

    .line 1746
    const/16 v17, 0x0

    .local v17, "b":I
    :goto_8
    move-object/from16 v0, v41

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_13

    .line 1747
    aget-object v3, v41, v17

    if-nez v3, :cond_10

    .line 1746
    :cond_f
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1750
    :cond_10
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v42

    .line 1751
    .local v42, "start":I
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v23

    .line 1752
    .local v23, "end":I
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move/from16 v0, v42

    if-gt v3, v0, :cond_11

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move/from16 v0, v42

    if-ge v3, v0, :cond_12

    :cond_11
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move/from16 v0, v23

    if-gt v3, v0, :cond_f

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move/from16 v0, v23

    if-lt v3, v0, :cond_f

    .line 1753
    :cond_12
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1754
    const/4 v3, 0x0

    aput-object v3, v41, v17

    goto :goto_9

    .line 1759
    .end local v17    # "b":I
    .end local v23    # "end":I
    .end local v42    # "start":I
    :cond_13
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    if-eqz v3, :cond_14

    .line 1760
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1761
    :cond_14
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    if-eqz v3, :cond_15

    .line 1762
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v6, "fonts/ritalic.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1763
    :cond_15
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    if-nez v3, :cond_16

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-eqz v3, :cond_17

    .line 1764
    :cond_16
    new-instance v3, Lorg/telegram/ui/Components/URLSpanMono;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    move-object/from16 v0, v40

    invoke-direct {v3, v0, v6, v7, v10}, Lorg/telegram/ui/Components/URLSpanMono;-><init>(Ljava/lang/CharSequence;IIZ)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1765
    :cond_17
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v3, :cond_18

    .line 1766
    new-instance v6, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v3, v24

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    invoke-direct {v6, v3, v7}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v6, v3, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1767
    :cond_18
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v3, :cond_19

    .line 1768
    new-instance v6, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v3, v24

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    invoke-direct {v6, v3, v7}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v6, v3, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1769
    :cond_19
    if-nez v46, :cond_6

    .line 1770
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    .line 1771
    .local v45, "url":Ljava/lang/String;
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;

    if-eqz v3, :cond_1a

    .line 1772
    new-instance v3, Lorg/telegram/ui/Components/URLSpanBotCommand;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    move-object/from16 v0, v45

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Components/URLSpanBotCommand;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1773
    :cond_1a
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityHashtag;

    if-nez v3, :cond_1b

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMention;

    if-eqz v3, :cond_1c

    .line 1774
    :cond_1b
    new-instance v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1775
    :cond_1c
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v3, :cond_1d

    .line 1776
    new-instance v3, Lorg/telegram/ui/Components/URLSpanReplacement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1777
    :cond_1d
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v3, :cond_1f

    .line 1778
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "tg://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1779
    new-instance v3, Landroid/text/style/URLSpan;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1781
    :cond_1e
    new-instance v3, Landroid/text/style/URLSpan;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1783
    :cond_1f
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-eqz v3, :cond_6

    .line 1784
    new-instance v3, Lorg/telegram/ui/Components/URLSpanReplacement;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1791
    .end local v16    # "a":I
    .end local v20    # "count":I
    .end local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v40    # "spannable":Landroid/text/Spannable;
    .end local v41    # "spans":[Landroid/text/style/URLSpan;
    .end local v45    # "url":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_22

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_23

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatar:Z

    if-eqz v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_26

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-gtz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-lez v3, :cond_25

    :cond_24
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatarGroup:Z

    if-eqz v3, :cond_25

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_32

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowContactAvatar:Z

    if-eqz v3, :cond_32

    .line 1793
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_32

    :cond_26
    const/16 v38, 0x1

    .line 1795
    .local v38, "needShare":Z
    :goto_a
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v3

    :goto_b
    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    .line 1796
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    if-nez v38, :cond_27

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-eqz v3, :cond_34

    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->leftBound:I

    add-int/lit8 v3, v3, 0x46

    int-to-float v3, v3

    :goto_c
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v5, v6, v3

    .line 1797
    .local v5, "maxWidth":I
    if-eqz p1, :cond_28

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_2a

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v3

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    if-eqz v3, :cond_2b

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1798
    :cond_2a
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v5, v3

    .line 1800
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_2c

    .line 1801
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v5, v3

    .line 1807
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_35

    .line 1808
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 1814
    .local v4, "paint":Landroid/text/TextPaint;
    :goto_d
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_36

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v3, v6, v7, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 1816
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v6, 0x0

    .line 1817
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1818
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 1819
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1828
    .local v2, "textLayout":Landroid/text/StaticLayout;
    :goto_e
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    .line 1829
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v33

    .line 1831
    .local v33, "linesCount":I
    move/from16 v0, v33

    int-to-float v3, v0

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v19, v0

    .line 1832
    .local v19, "blocksCount":I
    const/16 v36, 0x0

    .line 1833
    .local v36, "linesOffset":I
    const/16 v39, 0x0

    .line 1835
    .local v39, "prevOffset":F
    const/16 v16, 0x0

    .restart local v16    # "a":I
    :goto_f
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 1836
    const/16 v3, 0xa

    sub-int v6, v33, v36

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1837
    .local v21, "currentBlockLinesCount":I
    new-instance v18, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;-><init>()V

    .line 1839
    .local v18, "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_37

    .line 1840
    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 1841
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    .line 1842
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 1843
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1882
    :cond_2d
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    :try_start_2
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v6, v21, -0x1

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v28

    .line 1887
    .local v28, "lastLeft":F
    if-nez v16, :cond_2e

    .line 1888
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->textXOffset:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1900
    :cond_2e
    :goto_11
    :try_start_3
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v6, v21, -0x1

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result v29

    .line 1906
    .local v29, "lastLine":F
    :goto_12
    move/from16 v0, v29

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v34, v0

    .line 1910
    .local v34, "linesMaxWidth":I
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2f

    .line 1911
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    .line 1914
    :cond_2f
    add-float v3, v29, v28

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v30, v0

    .local v30, "lastLineWidthWithLeft":I
    move/from16 v35, v30

    .line 1916
    .local v35, "linesMaxWidthWithLeft":I
    const/4 v3, 0x1

    move/from16 v0, v21

    if-le v0, v3, :cond_40

    .line 1917
    const/16 v26, 0x0

    .line 1918
    .local v26, "hasNonRTL":Z
    const/16 v43, 0x0

    .local v43, "textRealMaxWidth":F
    const/16 v44, 0x0

    .line 1919
    .local v44, "textRealMaxWidthWithLeft":F
    const/16 v37, 0x0

    .local v37, "n":I
    :goto_13
    move/from16 v0, v37

    move/from16 v1, v21

    if-ge v0, v1, :cond_3d

    .line 1921
    :try_start_4
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v32

    .line 1927
    .local v32, "lineWidth":F
    :goto_14
    add-int/lit8 v3, v5, 0x14

    int-to-float v3, v3

    cmpl-float v3, v32, v3

    if-lez v3, :cond_30

    .line 1928
    int-to-float v0, v5

    move/from16 v32, v0

    .line 1932
    :cond_30
    :try_start_5
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result v31

    .line 1938
    .local v31, "lineLeft":F
    :goto_15
    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-lez v3, :cond_3c

    .line 1939
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    move/from16 v0, v31

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1940
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 1941
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->hasRtl:Z

    .line 1947
    :goto_16
    if-nez v26, :cond_31

    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-nez v3, :cond_31

    :try_start_6
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_31

    .line 1948
    const/16 v26, 0x1

    .line 1954
    :cond_31
    :goto_17
    move/from16 v0, v43

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v43

    .line 1955
    add-float v3, v32, v31

    move/from16 v0, v44

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v44

    .line 1956
    move/from16 v0, v32

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    move/from16 v0, v34

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 1957
    add-float v3, v32, v31

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1919
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_13

    .line 1793
    .end local v2    # "textLayout":Landroid/text/StaticLayout;
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v5    # "maxWidth":I
    .end local v16    # "a":I
    .end local v18    # "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    .end local v19    # "blocksCount":I
    .end local v21    # "currentBlockLinesCount":I
    .end local v26    # "hasNonRTL":Z
    .end local v28    # "lastLeft":F
    .end local v29    # "lastLine":F
    .end local v30    # "lastLineWidthWithLeft":I
    .end local v31    # "lineLeft":F
    .end local v32    # "lineWidth":F
    .end local v33    # "linesCount":I
    .end local v34    # "linesMaxWidth":I
    .end local v35    # "linesMaxWidthWithLeft":I
    .end local v36    # "linesOffset":I
    .end local v37    # "n":I
    .end local v38    # "needShare":Z
    .end local v39    # "prevOffset":F
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :cond_32
    const/16 v38, 0x0

    goto/16 :goto_a

    .line 1795
    .restart local v38    # "needShare":Z
    :cond_33
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_b

    .line 1796
    :cond_34
    const/high16 v3, 0x42a00000    # 80.0f

    goto/16 :goto_c

    .line 1810
    .restart local v5    # "maxWidth":I
    :cond_35
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v4    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_d

    .line 1821
    :cond_36
    :try_start_7
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .restart local v2    # "textLayout":Landroid/text/StaticLayout;
    goto/16 :goto_e

    .line 1823
    .end local v2    # "textLayout":Landroid/text/StaticLayout;
    :catch_1
    move-exception v22

    .line 1824
    .local v22, "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1845
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v2    # "textLayout":Landroid/text/StaticLayout;
    .restart local v16    # "a":I
    .restart local v18    # "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    .restart local v19    # "blocksCount":I
    .restart local v21    # "currentBlockLinesCount":I
    .restart local v33    # "linesCount":I
    .restart local v36    # "linesOffset":I
    .restart local v39    # "prevOffset":F
    :cond_37
    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    .line 1846
    .local v8, "startCharacter":I
    add-int v3, v36, v21

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v9

    .line 1847
    .local v9, "endCharacter":I
    if-ge v9, v8, :cond_38

    .line 1835
    .end local v8    # "startCharacter":I
    .end local v9    # "endCharacter":I
    :goto_18
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_f

    .line 1850
    .restart local v8    # "startCharacter":I
    .restart local v9    # "endCharacter":I
    :cond_38
    move-object/from16 v0, v18

    iput v8, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 1851
    move-object/from16 v0, v18

    iput v9, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    .line 1853
    :try_start_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_3a

    .line 1854
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v3, v8, v9, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 1855
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v6, 0x0

    .line 1856
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1857
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 1858
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 1862
    :goto_19
    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    .line 1863
    if-eqz v16, :cond_39

    .line 1864
    move-object/from16 v0, v18

    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    sub-float v3, v3, v39

    float-to-int v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1866
    :cond_39
    move-object/from16 v0, v18

    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    move-object/from16 v0, v18

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1867
    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    move/from16 v39, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1872
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2d

    .line 1873
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1875
    :try_start_9
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_10

    .line 1876
    :catch_2
    move-exception v22

    .line 1877
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1860
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_3a
    :try_start_a
    new-instance v6, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v18

    iput-object v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_19

    .line 1868
    :catch_3
    move-exception v22

    .line 1869
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1890
    .end local v8    # "startCharacter":I
    .end local v9    # "endCharacter":I
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v22

    .line 1891
    .restart local v22    # "e":Ljava/lang/Exception;
    const/16 v28, 0x0

    .line 1892
    .restart local v28    # "lastLeft":F
    if-nez v16, :cond_3b

    .line 1893
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1895
    :cond_3b
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 1901
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v22

    .line 1902
    .restart local v22    # "e":Ljava/lang/Exception;
    const/16 v29, 0x0

    .line 1903
    .restart local v29    # "lastLine":F
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1922
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v26    # "hasNonRTL":Z
    .restart local v30    # "lastLineWidthWithLeft":I
    .restart local v34    # "linesMaxWidth":I
    .restart local v35    # "linesMaxWidthWithLeft":I
    .restart local v37    # "n":I
    .restart local v43    # "textRealMaxWidth":F
    .restart local v44    # "textRealMaxWidthWithLeft":F
    :catch_6
    move-exception v22

    .line 1923
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1924
    const/16 v32, 0x0

    .restart local v32    # "lineWidth":F
    goto/16 :goto_14

    .line 1933
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v22

    .line 1934
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1935
    const/16 v31, 0x0

    .restart local v31    # "lineLeft":F
    goto/16 :goto_15

    .line 1943
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_3c
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto/16 :goto_16

    .line 1950
    :catch_8
    move-exception v27

    .line 1951
    .local v27, "ignore":Ljava/lang/Exception;
    const/16 v26, 0x1

    goto/16 :goto_17

    .line 1959
    .end local v27    # "ignore":Ljava/lang/Exception;
    .end local v31    # "lineLeft":F
    .end local v32    # "lineWidth":F
    :cond_3d
    if-eqz v26, :cond_3f

    .line 1960
    move/from16 v43, v44

    .line 1961
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_3e

    .line 1962
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    .line 1967
    :cond_3e
    :goto_1a
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    move/from16 v0, v43

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    .line 1980
    .end local v26    # "hasNonRTL":Z
    .end local v37    # "n":I
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :goto_1b
    add-int v36, v36, v21

    goto/16 :goto_18

    .line 1964
    .restart local v26    # "hasNonRTL":Z
    .restart local v37    # "n":I
    .restart local v43    # "textRealMaxWidth":F
    .restart local v44    # "textRealMaxWidthWithLeft":F
    :cond_3f
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_3e

    .line 1965
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    goto :goto_1a

    .line 1969
    .end local v26    # "hasNonRTL":Z
    .end local v37    # "n":I
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :cond_40
    const/4 v3, 0x0

    cmpl-float v3, v28, v3

    if-lez v3, :cond_42

    .line 1970
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    move/from16 v0, v28

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1971
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_41

    const/4 v3, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->hasRtl:Z

    .line 1972
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 1977
    :goto_1d
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    move/from16 v0, v34

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    goto :goto_1b

    .line 1971
    :cond_41
    const/4 v3, 0x0

    goto :goto_1c

    .line 1974
    :cond_42
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto :goto_1d
.end method

.method public generateLinkDescription()V
    .locals 5

    .prologue
    .line 1589
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1592
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1593
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    .line 1599
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1600
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1602
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1594
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1595
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1596
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1597
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 11
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1037
    if-nez p1, :cond_0

    .line 1038
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 1041
    :cond_0
    if-eqz p1, :cond_1

    .line 1042
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "name":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_2

    .line 1047
    const-string/jumbo v1, "PaymentSuccessfullyPaid"

    const v2, 0x7f07055d

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1051
    :goto_1
    return-void

    .line 1044
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1049
    :cond_2
    const-string/jumbo v1, "PaymentSuccessfullyPaidNoItem"

    const v2, 0x7f07055e

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const v5, 0x7f070031

    const/16 v4, 0x14

    const/4 v3, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    .line 1054
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1055
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v1, :cond_0

    .line 1056
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 1058
    :cond_0
    if-nez p1, :cond_1

    .line 1059
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 1062
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_3

    .line 1063
    const-string/jumbo v1, "ActionPinnedNoText"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_2

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1099
    :goto_1
    return-void

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    move-object p1, p2

    .line 1063
    goto :goto_0

    .line 1065
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1066
    const-string/jumbo v1, "ActionPinnedMusic"

    const v2, 0x7f070030

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_4

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_2
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    move-object p1, p2

    goto :goto_2

    .line 1067
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1068
    const-string/jumbo v1, "ActionPinnedVideo"

    const v2, 0x7f070036

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_6

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_3
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    move-object p1, p2

    goto :goto_3

    .line 1069
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1070
    const-string/jumbo v1, "ActionPinnedGif"

    const v2, 0x7f07002f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_8

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_4
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    move-object p1, p2

    goto :goto_4

    .line 1071
    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1072
    const-string/jumbo v1, "ActionPinnedVoice"

    const v2, 0x7f070037

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_a

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_5
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    move-object p1, p2

    goto :goto_5

    .line 1073
    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1074
    const-string/jumbo v1, "ActionPinnedRound"

    const v2, 0x7f070033

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_c

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_6
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    move-object p1, p2

    goto :goto_6

    .line 1075
    :cond_d
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1076
    const-string/jumbo v1, "ActionPinnedSticker"

    const v2, 0x7f070034

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_e

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_7
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    move-object p1, p2

    goto :goto_7

    .line 1077
    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_11

    .line 1078
    const-string/jumbo v1, "ActionPinnedFile"

    const v2, 0x7f07002c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_10

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_8
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    move-object p1, p2

    goto :goto_8

    .line 1079
    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v1, :cond_13

    .line 1080
    const-string/jumbo v1, "ActionPinnedGeo"

    const v2, 0x7f07002e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_12

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_9
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    move-object p1, p2

    goto :goto_9

    .line 1081
    :cond_13
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v1, :cond_15

    .line 1082
    const-string/jumbo v1, "ActionPinnedContact"

    const v2, 0x7f07002b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_14

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_a
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    move-object p1, p2

    goto :goto_a

    .line 1083
    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_17

    .line 1084
    const-string/jumbo v1, "ActionPinnedPhoto"

    const v2, 0x7f070032

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_16

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_b
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_16
    move-object p1, p2

    goto :goto_b

    .line 1085
    :cond_17
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_19

    .line 1086
    const-string/jumbo v1, "ActionPinnedGame"

    const v2, 0x7f07002d

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\ud83c\udfae "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_18

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_c
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1087
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1, v2, v3, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_18
    move-object p1, p2

    .line 1086
    goto :goto_c

    .line 1088
    :cond_19
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 1089
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1090
    .local v0, "mess":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_1a

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    :cond_1a
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1094
    const-string/jumbo v1, "ActionPinnedText"

    const v2, 0x7f070035

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_1b

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_d
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1b
    move-object p1, p2

    goto :goto_d

    .line 1096
    .end local v0    # "mess":Ljava/lang/CharSequence;
    :cond_1c
    const-string/jumbo v1, "ActionPinnedNoText"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_1d

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_e
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1d
    move-object p1, p2

    goto :goto_e
.end method

.method public generateThumbs(Z)V
    .locals 6
    .param p1, "update"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1307
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v4, :cond_5

    .line 1308
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-eqz v4, :cond_0

    .line 1309
    if-nez p1, :cond_1

    .line 1310
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1312
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1313
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1314
    .local v2, "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1315
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1316
    .local v3, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_3

    .line 1314
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1319
    :cond_3
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1320
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1312
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1327
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_0

    .line 1328
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_b

    .line 1329
    if-eqz p1, :cond_6

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 1330
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1331
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1332
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1333
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1334
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_4
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 1335
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1336
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_9

    .line 1334
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1339
    :cond_9
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1340
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1332
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1346
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_d

    .line 1347
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_0

    .line 1348
    if-nez p1, :cond_c

    .line 1349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 1350
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1351
    :cond_c
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_0

    .line 1352
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1353
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1354
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 1355
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto/16 :goto_0

    .line 1358
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_d
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v4, :cond_16

    .line 1359
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_e

    .line 1360
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_e

    .line 1361
    if-nez p1, :cond_11

    .line 1362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 1363
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_e
    :goto_5
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_10

    .line 1371
    if-eqz p1, :cond_f

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    if-nez v4, :cond_12

    .line 1372
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    .line 1389
    :cond_10
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1390
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 1391
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1364
    :cond_11
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_e

    .line 1365
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1366
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_5

    .line 1373
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_12
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1374
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_6
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_10

    .line 1375
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1376
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_7
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_15

    .line 1377
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1378
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_14

    .line 1376
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1381
    :cond_14
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1382
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1374
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1393
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_16
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_0

    .line 1394
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_1c

    .line 1395
    if-eqz p1, :cond_17

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v4, :cond_18

    .line 1396
    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1397
    :cond_18
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1398
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1399
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1400
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_9
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1b

    .line 1401
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1402
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_1a

    .line 1400
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1405
    :cond_1a
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1406
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1398
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1412
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1c
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_0

    .line 1413
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_0

    .line 1414
    if-nez p1, :cond_1d

    .line 1415
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 1416
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1417
    :cond_1d
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_0

    .line 1418
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1419
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0
.end method

.method public getApproximateHeight()I
    .locals 11

    .prologue
    .line 2322
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v9, :cond_2

    .line 2323
    iget v10, p0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v9, :cond_1

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_0
    add-int v3, v10, v9

    .line 2324
    .local v3, "height":I
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2325
    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    .line 2411
    .end local v3    # "height":I
    :cond_0
    :goto_1
    return v3

    .line 2323
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2328
    :cond_2
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 2329
    const/high16 v9, 0x42900000    # 72.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2330
    :cond_3
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xc

    if-ne v9, v10, :cond_4

    .line 2331
    const/high16 v9, 0x428e0000    # 71.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2332
    :cond_4
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_5

    .line 2333
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2334
    :cond_5
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 2335
    const/high16 v9, 0x42e40000    # 114.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2336
    :cond_6
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xe

    if-ne v9, v10, :cond_7

    .line 2337
    const/high16 v9, 0x42a40000    # 82.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2338
    :cond_7
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_8

    .line 2339
    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2340
    :cond_8
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_9

    .line 2341
    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2342
    :cond_9
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_a

    .line 2343
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    goto :goto_1

    .line 2344
    :cond_a
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_11

    .line 2345
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    const v10, 0x3ecccccd    # 0.4f

    mul-float v4, v9, v10

    .line 2347
    .local v4, "maxHeight":F
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2348
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v5, v9, v10

    .line 2352
    .local v5, "maxWidth":F
    :goto_2
    const/4 v6, 0x0

    .line 2353
    .local v6, "photoHeight":I
    const/4 v7, 0x0

    .line 2354
    .local v7, "photoWidth":I
    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2355
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-eqz v10, :cond_b

    .line 2356
    iget v7, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 2357
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 2361
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_c
    if-nez v7, :cond_d

    .line 2362
    float-to-int v6, v4

    .line 2363
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v7, v6, v9

    .line 2365
    :cond_d
    int-to-float v9, v6

    cmpl-float v9, v9, v4

    if-lez v9, :cond_e

    .line 2366
    int-to-float v9, v7

    int-to-float v10, v6

    div-float v10, v4, v10

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 2367
    float-to-int v6, v4

    .line 2369
    :cond_e
    int-to-float v9, v7

    cmpl-float v9, v9, v5

    if-lez v9, :cond_f

    .line 2370
    int-to-float v9, v6

    int-to-float v10, v7

    div-float v10, v5, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 2372
    :cond_f
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v3, v6, v9

    goto/16 :goto_1

    .line 2350
    .end local v5    # "maxWidth":F
    .end local v6    # "photoHeight":I
    .end local v7    # "photoWidth":I
    :cond_10
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v5, v9, v10

    .restart local v5    # "maxWidth":F
    goto :goto_2

    .line 2377
    .end local v4    # "maxHeight":F
    .end local v5    # "maxWidth":F
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 2378
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 2382
    .restart local v7    # "photoWidth":I
    :goto_3
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v6, v7, v9

    .line 2383
    .restart local v6    # "photoHeight":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    if-le v7, v9, :cond_12

    .line 2384
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    .line 2386
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    if-le v6, v9, :cond_13

    .line 2387
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    .line 2389
    :cond_13
    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2391
    .local v1, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_17

    .line 2392
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v9, v9

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 2393
    .local v8, "scale":F
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v2, v9

    .line 2394
    .local v2, "h":I
    if-nez v2, :cond_14

    .line 2395
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2397
    :cond_14
    if-le v2, v6, :cond_19

    .line 2398
    move v2, v6

    .line 2402
    :cond_15
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 2403
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2404
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 2409
    :cond_16
    :goto_5
    move v6, v2

    .line 2411
    .end local v2    # "h":I
    .end local v8    # "scale":F
    :cond_17
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v3, v6, v9

    goto/16 :goto_1

    .line 2380
    .end local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v6    # "photoHeight":I
    .end local v7    # "photoWidth":I
    :cond_18
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .restart local v7    # "photoWidth":I
    goto :goto_3

    .line 2399
    .restart local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v2    # "h":I
    .restart local v6    # "photoHeight":I
    .restart local v8    # "scale":F
    :cond_19
    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-ge v2, v9, :cond_15

    .line 2400
    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_4

    .line 2406
    :cond_1a
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    float-to-int v2, v9

    goto :goto_5
.end method

.method public getDialogId()J
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 2240
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocumentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 2148
    :goto_0
    return-object v0

    .line 2145
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_1

    .line 2146
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2148
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 2518
    iget v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v3, :cond_0

    .line 2519
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2523
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2524
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2525
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_1

    .line 2526
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 2531
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_2
    return v3

    .line 2521
    .end local v0    # "a":I
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_0

    .line 2527
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_2

    .line 2528
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    goto :goto_2

    .line 2523
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2531
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1482
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1484
    .local v2, "idx":I
    const/4 v0, 0x0

    .line 1485
    .local v0, "ext":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1486
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1488
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1489
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1491
    :cond_2
    if-nez v0, :cond_3

    .line 1492
    const-string/jumbo v0, ""

    .line 1494
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1495
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1499
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_0

    .line 1500
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    .line 1512
    :goto_0
    return-object v2

    .line 1501
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_1

    .line 1502
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1503
    .local v1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1504
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 1505
    .local v0, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_2

    .line 1506
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1509
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_2

    .line 1510
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1512
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 1516
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    const/4 v0, 0x2

    .line 1525
    :goto_0
    return v0

    .line 1518
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    const/4 v0, 0x1

    goto :goto_0

    .line 1520
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_2

    .line 1521
    const/4 v0, 0x3

    goto :goto_0

    .line 1522
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_3

    .line 1523
    const/4 v0, 0x0

    goto :goto_0

    .line 1525
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getForwardedName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2672
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_1

    .line 2673
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    if-eqz v2, :cond_0

    .line 2674
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2675
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_1

    .line 2676
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 2685
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_0
    return-object v2

    .line 2678
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    if-eqz v2, :cond_1

    .line 2679
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2680
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_1

    .line 2681
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2685
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    return v0
.end method

.method public getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 1

    .prologue
    .line 2592
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1242
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1258
    :goto_0
    return-object v1

    .line 1244
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_1

    .line 1245
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 1246
    .local v0, "photo":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    if-eqz v0, :cond_4

    .line 1247
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    goto :goto_0

    .line 1249
    .end local v0    # "photo":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_2

    .line 1250
    const-string/jumbo v1, "image/jpeg"

    goto :goto_0

    .line 1251
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_4

    .line 1252
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_3

    .line 1253
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_0

    .line 1254
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_4

    .line 1255
    const-string/jumbo v1, "image/jpeg"

    goto :goto_0

    .line 1258
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getMusicAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2535
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMusicAuthor(Z)Ljava/lang/String;
    .locals 9
    .param p1, "unknown"    # Z

    .prologue
    .line 2540
    iget v7, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v7, :cond_2

    .line 2541
    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2545
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_0
    const/4 v4, 0x0

    .line 2546
    .local v4, "isVoice":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_d

    .line 2547
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2548
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v7, :cond_4

    .line 2549
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-eqz v7, :cond_3

    .line 2550
    const/4 v4, 0x1

    .line 2563
    :cond_0
    :goto_2
    if-eqz v4, :cond_c

    .line 2564
    if-nez p1, :cond_5

    .line 2565
    const/4 v5, 0x0

    .line 2588
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    :goto_3
    return-object v5

    .line 2543
    .end local v0    # "a":I
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "isVoice":Z
    :cond_2
    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_0

    .line 2552
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v4    # "isVoice":Z
    :cond_3
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 2553
    .local v5, "performer":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p1, :cond_1

    .line 2554
    const-string/jumbo v7, "AudioUnknownArtist"

    const v8, 0x7f0700be

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 2558
    .end local v5    # "performer":Ljava/lang/String;
    :cond_4
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v7, :cond_0

    .line 2559
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->round_message:Z

    if-eqz v7, :cond_0

    .line 2560
    const/4 v4, 0x1

    goto :goto_2

    .line 2567
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 2568
    :cond_6
    const-string/jumbo v7, "FromYou"

    const v8, 0x7f07032e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 2570
    :cond_7
    const/4 v6, 0x0

    .line 2571
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v2, 0x0

    .line 2572
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    if-eqz v7, :cond_8

    .line 2573
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2581
    :goto_4
    if-eqz v6, :cond_b

    .line 2582
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 2574
    :cond_8
    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    if-eqz v7, :cond_9

    .line 2575
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    goto :goto_4

    .line 2576
    :cond_9
    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-gez v7, :cond_a

    .line 2577
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_4

    .line 2579
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    goto :goto_4

    .line 2583
    :cond_b
    if-eqz v2, :cond_c

    .line 2584
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto/16 :goto_3

    .line 2546
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2588
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_d
    const-string/jumbo v5, ""

    goto/16 :goto_3
.end method

.method public getMusicTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMusicTitle(Z)Ljava/lang/String;
    .locals 6
    .param p1, "unknown"    # Z

    .prologue
    .line 2485
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_1

    .line 2486
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2490
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 2491
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2492
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_5

    .line 2493
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-eqz v4, :cond_3

    .line 2494
    if-nez p1, :cond_2

    .line 2495
    const/4 v3, 0x0

    .line 2513
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    :goto_2
    return-object v3

    .line 2488
    .end local v0    # "a":I
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_0

    .line 2497
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2499
    :cond_3
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 2500
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 2501
    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    .line 2502
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 2503
    const-string/jumbo v4, "AudioUnknownTitle"

    const v5, 0x7f0700bf

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2507
    .end local v3    # "title":Ljava/lang/String;
    :cond_5
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_6

    .line 2508
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->round_message:Z

    if-eqz v4, :cond_6

    .line 2509
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2490
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2513
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_7
    const-string/jumbo v3, ""

    goto :goto_2
.end method

.method public getSecretTimeLeft()I
    .locals 4

    .prologue
    .line 2120
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 2121
    .local v0, "secondsLeft":I
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    if-eqz v1, :cond_0

    .line 2122
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2124
    :cond_0
    return v0
.end method

.method public getSecretTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2128
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2129
    const/4 v1, 0x0

    .line 2138
    :goto_0
    return-object v1

    .line 2131
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getSecretTimeLeft()I

    move-result v0

    .line 2133
    .local v0, "secondsLeft":I
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_1

    .line 2134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    goto :goto_0

    .line 2136
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, v0, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public getStickerEmoji()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2416
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2417
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2418
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_1

    .line 2419
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    .line 2422
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    return-object v2

    .line 2416
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStrickerChar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2311
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    .line 2312
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2313
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    .line 2314
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    .line 2318
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnradFlags()I
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    return v0
.end method

.method public hasPhotoStickers()Z
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentUnread()Z
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    return v0
.end method

.method public isForwarded()Z
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isFromUser()Z
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGame()Z
    .locals 1

    .prologue
    .line 2449
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGameMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 2468
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvoice()Z
    .locals 1

    .prologue
    .line 2453
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isInvoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMask()Z
    .locals 1

    .prologue
    .line 2433
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMaskMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMediaEmpty()Z
    .locals 1

    .prologue
    .line 2608
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMegagroup()Z
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMusic()Z
    .locals 1

    .prologue
    .line 2437
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isNewGif()Z
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOut()Z
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    return v0
.end method

.method public isOutOwner()Z
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReply()Z
    .locals 4

    .prologue
    .line 2604
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoundVideo()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2457
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->isRoundVideoCached:I

    if-nez v0, :cond_1

    .line 2458
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/MessageObject;->isRoundVideoCached:I

    .line 2460
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->isRoundVideoCached:I

    if-ne v0, v1, :cond_3

    :goto_1
    return v1

    .line 2458
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2460
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSecretMedia()Z
    .locals 2

    .prologue
    .line 2055
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_2

    .line 2056
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretPhoto()Z
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_2

    .line 2051
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendError()Z
    .locals 2

    .prologue
    .line 2112
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSending()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2108
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSent()Z
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSticker()Z
    .locals 2

    .prologue
    .line 2426
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 2427
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2429
    :goto_0
    return v0

    .line 2427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2429
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnread()Z
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 2445
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isVoice()Z
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isWebpageDocument()Z
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureInlineBotButtons()V
    .locals 18

    .prologue
    .line 1102
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v4, :cond_1

    .line 1137
    :cond_0
    return-void

    .line 1106
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    if-nez v4, :cond_4

    .line 1108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    .line 1112
    :goto_0
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_0

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 1114
    .local v15, "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    const/4 v14, 0x0

    .line 1115
    .local v14, "maxButtonSize":I
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1116
    .local v16, "size":I
    const/4 v11, 0x0

    .local v11, "b":I
    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_6

    .line 1117
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 1118
    .local v12, "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1120
    instance-of v4, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 1121
    const-string/jumbo v4, "PaymentReceipt"

    const v5, 0x7f07054d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1125
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_3
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgBotButtonPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x44fa0000    # 2000.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1126
    .local v2, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1127
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v17

    .line 1128
    .local v17, "width":F
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    .line 1129
    .local v13, "left":F
    cmpg-float v4, v13, v17

    if-gez v4, :cond_2

    .line 1130
    sub-float v17, v17, v13

    .line 1132
    :cond_2
    move/from16 v0, v17

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1116
    .end local v13    # "left":F
    .end local v17    # "width":F
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1110
    .end local v2    # "staticLayout":Landroid/text/StaticLayout;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v10    # "a":I
    .end local v11    # "b":I
    .end local v12    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .end local v14    # "maxButtonSize":I
    .end local v15    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .end local v16    # "size":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 1123
    .restart local v10    # "a":I
    .restart local v11    # "b":I
    .restart local v12    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .restart local v14    # "maxButtonSize":I
    .restart local v15    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .restart local v16    # "size":I
    :cond_5
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgBotButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1135
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v12    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v14

    mul-int v5, v5, v16

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/lit8 v7, v16, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    .line 1112
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method public needDrawAvatar()Z
    .locals 4

    .prologue
    .line 1993
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "usersDict":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1428
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 1429
    .local v3, "start":I
    if-ltz v3, :cond_5

    .line 1430
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v5, ""

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1431
    .local v2, "names":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 1432
    const/4 v4, 0x0

    .line 1433
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p4, :cond_0

    .line 1434
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 1436
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    if-nez v4, :cond_1

    .line 1437
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1439
    :cond_1
    if-eqz v4, :cond_3

    .line 1440
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1442
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1443
    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1445
    :cond_2
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1446
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    const/16 v7, 0x21

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1431
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1449
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    new-array v5, v9, [Ljava/lang/String;

    aput-object p2, v5, v8

    new-array v6, v9, [Ljava/lang/CharSequence;

    aput-object v2, v6, v8

    invoke-static {p1, v5, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1451
    .end local v0    # "a":I
    .end local v2    # "names":Landroid/text/SpannableStringBuilder;
    .end local p1    # "source":Ljava/lang/CharSequence;
    :cond_5
    return-object p1
.end method

.method public replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1455
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 1456
    .local v4, "start":I
    if-ltz v4, :cond_3

    .line 1459
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_0

    move-object v5, p3

    .line 1460
    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 1461
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    .end local p3    # "object":Lorg/telegram/tgnet/TLObject;
    iget v6, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1473
    .local v2, "id":Ljava/lang/String;
    :goto_0
    const/16 v5, 0xa

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 1474
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-array v5, v8, [Ljava/lang/String;

    aput-object p2, v5, v7

    new-array v6, v8, [Ljava/lang/String;

    aput-object v3, v6, v7

    invoke-static {p1, v5, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1475
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1478
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1462
    .restart local p3    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_0
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_1

    move-object v5, p3

    .line 1463
    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1464
    .restart local v3    # "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local p3    # "object":Lorg/telegram/tgnet/TLObject;
    iget v6, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_0

    .line 1465
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .restart local p3    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_1
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v5, :cond_2

    move-object v1, p3

    .line 1466
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 1467
    .local v1, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    .line 1468
    .restart local v3    # "name":Ljava/lang/String;
    const-string/jumbo v2, "game"

    .line 1469
    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_0

    .line 1470
    .end local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, ""

    .line 1471
    .restart local v3    # "name":Ljava/lang/String;
    const-string/jumbo v2, "0"

    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    move-object v0, p1

    .line 1478
    goto :goto_1
.end method

.method public setContentIsRead()V
    .locals 2

    .prologue
    .line 2028
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 2029
    return-void
.end method

.method public setIsRead()V
    .locals 2

    .prologue
    .line 2009
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 2010
    return-void
.end method

.method public setType()V
    .locals 7

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1140
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    .line 1141
    .local v0, "oldType":I
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    if-eqz v1, :cond_14

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1143
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    .line 1144
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1145
    const-string/jumbo v1, "Empty message"

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1207
    :cond_1
    :goto_0
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v0, v1, :cond_2

    .line 1208
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 1210
    :cond_2
    return-void

    .line 1147
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v1, :cond_5

    .line 1148
    :cond_4
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 1149
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 1150
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_6

    .line 1151
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 1152
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v1, :cond_8

    .line 1153
    :cond_7
    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 1154
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1155
    const/4 v1, 0x5

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 1156
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1157
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 1158
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1159
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 1160
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1161
    const/16 v1, 0xe

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 1162
    :cond_c
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v1, :cond_d

    .line 1163
    const/16 v1, 0xc

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1164
    :cond_d
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v1, :cond_e

    .line 1165
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1166
    :cond_e
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_12

    .line 1167
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1168
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1169
    const/16 v1, 0x8

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1170
    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v2, "image/webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1171
    const/16 v1, 0xd

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1173
    :cond_10
    iput v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1176
    :cond_11
    iput v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1178
    :cond_12
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_13

    .line 1179
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1180
    :cond_13
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_1

    .line 1181
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1183
    :cond_14
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v1, :cond_1

    .line 1184
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    if-eqz v1, :cond_15

    .line 1185
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1186
    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v1, :cond_16

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v1, :cond_17

    .line 1187
    :cond_16
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 1188
    const/16 v1, 0xb

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1189
    :cond_17
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v1, :cond_1a

    .line 1190
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v1, :cond_18

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v1, :cond_19

    .line 1191
    :cond_18
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 1192
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1194
    :cond_19
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 1195
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1197
    :cond_1a
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-eqz v1, :cond_1b

    .line 1198
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 1199
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1200
    :cond_1b
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    if-eqz v1, :cond_1c

    .line 1201
    const/16 v1, 0x10

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 1203
    :cond_1c
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 1204
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0
.end method

.method public shouldEncryptPhotoOrVideo()Z
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method
