.class public Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/framework/ui/widget/asyncview/OnImageGotListener;


# static fields
.field public static final INSTANCE:Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;

    .line 2
    .line 3
    invoke-direct {v0}, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;->INSTANCE:Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onImageGot(Lm/framework/ui/widget/asyncview/AsyncView;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lm/framework/ui/widget/asyncview/AsyncView;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method
