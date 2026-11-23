.class public Lcom/join/mgps/customview/EmojiTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/text/Html$ImageGetter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/EmojiTextView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/EmojiTextView$a;-><init>(Lcom/join/mgps/customview/EmojiTextView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/EmojiTextView;->c:Landroid/text/Html$ImageGetter;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/EmojiTextView;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p2, Lcom/join/mgps/customview/EmojiTextView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/EmojiTextView$a;-><init>(Lcom/join/mgps/customview/EmojiTextView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/EmojiTextView;->c:Landroid/text/Html$ImageGetter;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/EmojiTextView;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p2, Lcom/join/mgps/customview/EmojiTextView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/EmojiTextView$a;-><init>(Lcom/join/mgps/customview/EmojiTextView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/EmojiTextView;->c:Landroid/text/Html$ImageGetter;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/customview/EmojiTextView;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/EmojiTextView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/EmojiTextView;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    const v0, 0x1f449

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/EmojiTextView;->c(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "<img src=\"emoji_01\"/>"

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x1f448

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/EmojiTextView;->c(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "<img src=\"emoji_02\"/>"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v0, 0x263a

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/EmojiTextView;->c(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "<img src=\"emoji_03\"/>"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const v0, 0x1f511

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/EmojiTextView;->c(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "<img src=\"emoji_04\"/>"

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hexEmoji"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setEmojiText(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/EmojiTextView;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/EmojiTextView;->c:Landroid/text/Html$ImageGetter;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
