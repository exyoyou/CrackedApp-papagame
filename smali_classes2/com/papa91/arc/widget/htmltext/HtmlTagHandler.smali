.class public Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ol;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ul;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Code;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Center;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Strike;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Table;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Tr;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Th;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Td;
    }
.end annotation


# static fields
.field public static final A_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_A_TAG"

.field public static final LIST_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_LI_TAG"

.field public static final ORDERED_LIST:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_OL_TAG"

.field public static final PLACEHOLDER_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_PLACEHOLDER"

.field public static final UNORDERED_LIST:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_UL_TAG"

.field private static final defaultBullet:Landroid/text/style/BulletSpan;

.field private static final defaultIndent:I = 0xa

.field private static final defaultListItemIndent:I = 0x14

.field private static userGivenIndent:I = -0x1


# instance fields
.field private clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

.field private drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

.field lists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field olNextIndex:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onClickATagListenerProvider:Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

.field tableHtmlBuilder:Ljava/lang/StringBuilder;

.field tableTagLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/style/BulletSpan;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->defaultBullet:Landroid/text/style/BulletSpan;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Stack;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Stack;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    .line 27
    .line 28
    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->onClickATagListenerProvider:Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    .line 2
    .line 3
    return-object p0
.end method

.method private varargs end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v3, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    const-string p2, "\n"

    .line 34
    .line 35
    invoke-interface {p1, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    :cond_1
    array-length p2, p4

    .line 41
    const/4 p3, 0x0

    .line 42
    :goto_0
    if-ge p3, p2, :cond_2

    .line 43
    .line 44
    aget-object v0, p4, p3

    .line 45
    .line 46
    const/16 v3, 0x21

    .line 47
    .line 48
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p3, p3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method private extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method private static getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1, v0, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    array-length v0, p1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    array-length v0, p1

    .line 16
    :goto_0
    if-lez v0, :cond_2

    .line 17
    .line 18
    add-int/lit8 v2, v0, -0x1

    .line 19
    .line 20
    aget-object v3, p1, v2

    .line 21
    .line 22
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x11

    .line 27
    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    aget-object p0, p1, v2

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-object v1
.end method

.method private start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x11

    .line 6
    .line 7
    invoke-interface {p1, p2, v0, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private storeTableTags(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "table"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "<"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "/"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, ">"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "td"

    const-string v5, "th"

    const-string v6, "tr"

    const-string v7, "table"

    const-string v8, "strike"

    const-string v9, "s"

    const-string v10, "center"

    const-string v11, "code"

    const-string v12, "HTML_TEXTVIEW_ESCAPED_A_TAG"

    const-string v13, "HTML_TEXTVIEW_ESCAPED_LI_TAG"

    const-string v14, "\n"

    const-string v15, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    move-object/from16 v16, v4

    const-string v4, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    move-object/from16 v17, v5

    const/4 v5, 0x1

    if-eqz p1, :cond_10

    .line 1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 4
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 7
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0xa

    if-eq v3, v6, :cond_2

    .line 8
    invoke-interface {v2, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 9
    :cond_2
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 10
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ol;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ol;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 13
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 14
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 15
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ul;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ul;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 16
    :cond_4
    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    const-string v4, "href"

    .line 17
    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 18
    :goto_0
    new-instance v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-direct {v4, v6, v3, v12}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    const/4 v12, 0x0

    .line 19
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Code;

    invoke-direct {v3, v12}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Code;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 22
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Center;

    invoke-direct {v3, v12}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Center;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 23
    :cond_8
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    .line 24
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 25
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Table;

    invoke-direct {v3, v12}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Table;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 26
    iget v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    if-nez v3, :cond_a

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v3, "table placeholder"

    .line 28
    invoke-interface {v2, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 29
    :cond_a
    iget v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    goto :goto_2

    .line 30
    :cond_b
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 31
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Tr;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Tr;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    move-object/from16 v3, v17

    const/4 v4, 0x0

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 33
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Th;

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Th;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_d
    move-object/from16 v3, v16

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 35
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Td;

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Td;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    return v2

    :cond_f
    :goto_1
    move-object v4, v12

    .line 36
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Strike;

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Strike;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_10
    move-object/from16 v20, v16

    move-object/from16 v3, v17

    const/16 v16, 0x0

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 38
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_11
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 39
    :cond_12
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 40
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 41
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 42
    :cond_13
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v5, 0x2

    if-eqz v13, :cond_1e

    .line 43
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 44
    sget v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    const/4 v6, -0x1

    if-le v3, v6, :cond_14

    mul-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_14
    const/16 v3, 0x14

    .line 45
    :goto_3
    iget-object v7, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 46
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_15

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0xa

    if-eq v4, v7, :cond_15

    .line 47
    invoke-interface {v2, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 48
    :cond_15
    sget v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    if-le v4, v6, :cond_16

    move/from16 v18, v4

    goto :goto_4

    :cond_16
    const/16 v18, 0xa

    :goto_4
    if-le v4, v6, :cond_17

    .line 49
    new-instance v4, Landroid/text/style/BulletSpan;

    sget v6, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    invoke-direct {v4, v6}, Landroid/text/style/BulletSpan;-><init>(I)V

    goto :goto_5

    :cond_17
    sget-object v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->defaultBullet:Landroid/text/style/BulletSpan;

    .line 50
    :goto_5
    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_18

    .line 51
    invoke-virtual {v4, v7}, Landroid/text/style/BulletSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int v18, v18, v4

    .line 52
    iget-object v4, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-le v4, v5, :cond_18

    .line 53
    iget-object v4, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    sub-int/2addr v4, v5

    mul-int v4, v4, v3

    sub-int v18, v18, v4

    :cond_18
    move/from16 v4, v18

    .line 54
    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    new-array v4, v5, [Ljava/lang/Object;

    .line 55
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v7, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 56
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    mul-int v3, v3, v7

    invoke-direct {v5, v3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/4 v3, 0x0

    aput-object v5, v4, v3

    aput-object v6, v4, v8

    .line 57
    const-class v5, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ul;

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 58
    :cond_19
    iget-object v4, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 59
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1a

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0xa

    if-eq v4, v7, :cond_1b

    .line 60
    invoke-interface {v2, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_6

    :cond_1a
    const/16 v7, 0xa

    .line 61
    :cond_1b
    :goto_6
    sget v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    if-le v4, v6, :cond_1c

    goto :goto_7

    :cond_1c
    const/16 v4, 0xa

    .line 62
    :goto_7
    new-instance v6, Lcom/papa91/arc/widget/htmltext/NumberSpan;

    iget-object v7, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-direct {v6, v4, v7}, Lcom/papa91/arc/widget/htmltext/NumberSpan;-><init>(II)V

    .line 63
    iget-object v7, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-le v7, v8, :cond_1d

    .line 64
    invoke-virtual {v6, v8}, Lcom/papa91/arc/widget/htmltext/NumberSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int/2addr v4, v6

    .line 65
    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-le v6, v5, :cond_1d

    .line 66
    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    sub-int/2addr v6, v5

    mul-int v6, v6, v3

    sub-int/2addr v4, v6

    .line 67
    :cond_1d
    new-instance v6, Lcom/papa91/arc/widget/htmltext/NumberSpan;

    iget-object v7, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-direct {v6, v4, v7}, Lcom/papa91/arc/widget/htmltext/NumberSpan;-><init>(II)V

    new-array v4, v5, [Ljava/lang/Object;

    .line 68
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v7, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 69
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    sub-int/2addr v7, v8

    mul-int v3, v3, v7

    invoke-direct {v5, v3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/4 v3, 0x0

    aput-object v5, v4, v3

    aput-object v6, v4, v8

    .line 70
    const-class v5, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ol;

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 71
    :cond_1e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 72
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;

    invoke-static {v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    invoke-interface {v2, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 74
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 75
    instance-of v7, v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;

    if-eqz v7, :cond_1f

    check-cast v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;

    invoke-static {v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;->access$1000(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_1f
    move-object/from16 v4, v16

    .line 76
    :goto_8
    invoke-interface {v2, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    if-eqz v6, :cond_20

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Object;

    .line 78
    new-instance v7, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;

    invoke-direct {v7, v0, v4, v5}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    aput-object v7, v6, v13

    invoke-direct {v0, v2, v3, v13, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_20
    const/4 v12, 0x1

    const/4 v13, 0x0

    new-array v6, v12, [Ljava/lang/Object;

    .line 79
    new-instance v7, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;

    invoke-direct {v7, v0, v4, v5}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v13

    invoke-direct {v0, v2, v3, v13, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_21
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 80
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    new-array v3, v12, [Ljava/lang/Object;

    .line 81
    new-instance v4, Landroid/text/style/TypefaceSpan;

    const-string v5, "monospace"

    invoke-direct {v4, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v13

    const-class v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Code;

    invoke-direct {v0, v2, v4, v13, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 82
    :cond_22
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    new-array v3, v12, [Ljava/lang/Object;

    .line 83
    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    aput-object v4, v3, v13

    const-class v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Center;

    invoke-direct {v0, v2, v4, v12, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 84
    :cond_23
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_a

    .line 85
    :cond_24
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 86
    iget v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    sub-int/2addr v3, v12

    iput v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    .line 87
    const-class v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Table;

    if-nez v3, :cond_27

    .line 88
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    if-eqz v6, :cond_25

    .line 90
    invoke-virtual {v6}, Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;->newInstance()Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    move-result-object v6

    .line 91
    invoke-virtual {v6, v3}, Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;->setTableHtml(Ljava/lang/String;)V

    goto :goto_9

    :cond_25
    move-object/from16 v6, v16

    .line 92
    :goto_9
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    if-eqz v3, :cond_26

    .line 93
    invoke-virtual {v3}, Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;->newInstance()Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    move-result-object v3

    move-object/from16 v16, v3

    :cond_26
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v3, v5

    const/4 v7, 0x1

    aput-object v6, v3, v7

    .line 94
    invoke-direct {v0, v2, v4, v5, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_27
    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Object;

    .line 95
    invoke-direct {v0, v2, v4, v5, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_28
    const/4 v5, 0x0

    .line 96
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 97
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Tr;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 98
    :cond_29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 99
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Th;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2a
    move-object/from16 v3, v20

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 101
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Td;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2b
    return v5

    :cond_2c
    const/4 v5, 0x0

    const/4 v3, 0x1

    :goto_a
    new-array v4, v3, [Ljava/lang/Object;

    .line 102
    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v6, v4, v5

    const-class v6, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Strike;

    invoke-direct {v0, v2, v6, v5, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 103
    :goto_b
    invoke-direct/range {p0 .. p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->storeTableTags(ZLjava/lang/String;)V

    return v3
.end method

.method overrideTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "<HTML_TEXTVIEW_ESCAPED_PLACEHOLDER></HTML_TEXTVIEW_ESCAPED_PLACEHOLDER>"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "<ul"

    .line 23
    .line 24
    const-string v1, "<HTML_TEXTVIEW_ESCAPED_UL_TAG"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "</ul>"

    .line 31
    .line 32
    const-string v1, "</HTML_TEXTVIEW_ESCAPED_UL_TAG>"

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "<ol"

    .line 39
    .line 40
    const-string v1, "<HTML_TEXTVIEW_ESCAPED_OL_TAG"

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "</ol>"

    .line 47
    .line 48
    const-string v1, "</HTML_TEXTVIEW_ESCAPED_OL_TAG>"

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "<li"

    .line 55
    .line 56
    const-string v1, "<HTML_TEXTVIEW_ESCAPED_LI_TAG"

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "</li>"

    .line 63
    .line 64
    const-string v1, "</HTML_TEXTVIEW_ESCAPED_LI_TAG>"

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "<a"

    .line 71
    .line 72
    const-string v1, "<HTML_TEXTVIEW_ESCAPED_A_TAG"

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v0, "</a>"

    .line 79
    .line 80
    const-string v1, "</HTML_TEXTVIEW_ESCAPED_A_TAG>"

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method

.method public setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawTableLinkSpan(Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    .line 2
    .line 3
    return-void
.end method

.method public setListIndentPx(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sput p1, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    .line 6
    .line 7
    return-void
.end method

.method public setOnClickATagListenerProvider(Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->onClickATagListenerProvider:Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

    .line 2
    .line 3
    return-void
.end method
