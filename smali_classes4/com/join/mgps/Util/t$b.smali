.class Lcom/join/mgps/Util/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/t;->b(Landroid/content/Context;)Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "start",
            "end",
            "dest",
            "dstart",
            "dend"
        }
    .end annotation

    .line 1
    new-instance p4, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    move p5, p2

    .line 7
    :goto_0
    if-ge p5, p3, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result p6

    .line 13
    invoke-virtual {p4, p6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    add-int/lit8 p5, p5, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of p5, p1, Landroid/text/Spanned;

    .line 20
    .line 21
    if-eqz p5, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    if-lez p5, :cond_1

    .line 28
    .line 29
    new-instance p5, Landroid/text/SpannableString;

    .line 30
    .line 31
    invoke-direct {p5, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    move-object v0, p1

    .line 35
    check-cast v0, Landroid/text/Spanned;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    move v1, p2

    .line 40
    move v2, p3

    .line 41
    move-object v4, p5

    .line 42
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 43
    .line 44
    .line 45
    return-object p5

    .line 46
    :cond_1
    return-object p4
.end method
