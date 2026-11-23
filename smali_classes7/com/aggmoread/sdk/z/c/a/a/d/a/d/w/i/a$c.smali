.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;


# direct methods
.method private constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onAdClicked"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->onAdClicked()V

    goto/16 :goto_1

    :cond_0
    const-string p2, "onPageDismiss"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->y()V

    goto/16 :goto_1

    :cond_1
    const-string p2, "onVideoPlayError"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->c(II)V

    goto/16 :goto_1

    :cond_2
    const-string p2, "onVideoPlayEnd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->z()V

    goto/16 :goto_1

    :cond_3
    const-string p2, "onVideoSkipToEnd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->a(J)V

    goto :goto_1

    :cond_4
    const-string p2, "onVideoPlayStart"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->A()V

    goto :goto_1

    :cond_5
    const-string p2, "onRewardVerify"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz p3, :cond_6

    array-length p1, p3

    if-lez p1, :cond_6

    aget-object p1, p3, v2

    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_6

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_6
    move-object p1, v0

    :goto_0
    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    invoke-virtual {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->c(Ljava/util/Map;)V

    goto :goto_1

    :cond_7
    const-string p2, "onRewardStepVerify"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->b(II)V

    goto :goto_1

    :cond_8
    const-string p2, "onExtraRewardVerify"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/i/a;->e(I)V

    :cond_9
    :goto_1
    return-object v0
.end method
