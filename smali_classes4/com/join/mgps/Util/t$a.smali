.class Lcom/join/mgps/Util/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/t;->a(Landroid/content/Context;)Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/t$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    if-ge p5, p3, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result p6

    .line 13
    invoke-static {p6}, Lcom/join/mgps/Util/t;->c(C)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p4, p6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object p6, p0, Lcom/join/mgps/Util/t$a;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p6}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 26
    .line 27
    .line 28
    move-result-object p6

    .line 29
    const-string v0, "\u6635\u79f0\u4e0d\u80fd\u542b\u6709\u8868\u60c5"

    .line 30
    .line 31
    invoke-virtual {p6, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p5, p5, 0x1

    .line 35
    .line 36
    :goto_1
    add-int/lit8 p5, p5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    instance-of p5, p1, Landroid/text/Spanned;

    .line 40
    .line 41
    if-eqz p5, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result p5

    .line 47
    if-lez p5, :cond_2

    .line 48
    .line 49
    new-instance p5, Landroid/text/SpannableString;

    .line 50
    .line 51
    invoke-direct {p5, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    move-object v0, p1

    .line 55
    check-cast v0, Landroid/text/Spanned;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    move v1, p2

    .line 60
    move v2, p3

    .line 61
    move-object v4, p5

    .line 62
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 63
    .line 64
    .line 65
    return-object p5

    .line 66
    :cond_2
    return-object p4
.end method
