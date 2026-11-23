.class Lcom/join/mgps/adapter/d2$k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d2$k0;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/d2$k0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d2$k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$k0$a;->b:Lcom/join/mgps/adapter/d2$k0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$k0$a;->b:Lcom/join/mgps/adapter/d2$k0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$k0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/adapter/d2$a1;->d(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_3

    .line 22
    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x0

    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$k0$a;->b:Lcom/join/mgps/adapter/d2$k0;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$k0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/mgps/adapter/d2$a1;->r(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$k0$a;->b:Lcom/join/mgps/adapter/d2$k0;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$k0;->d:Lcom/join/mgps/adapter/d2;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/adapter/d2;->i(Lcom/join/mgps/adapter/d2;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v3, p0, Lcom/join/mgps/adapter/d2$k0$a;->b:Lcom/join/mgps/adapter/d2$k0;

    .line 53
    .line 54
    iget v3, v3, Lcom/join/mgps/adapter/d2$k0;->c:I

    .line 55
    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$k0$a;->b:Lcom/join/mgps/adapter/d2$k0;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$k0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/join/mgps/adapter/d2$a1;->r(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$k0$a;->b:Lcom/join/mgps/adapter/d2$k0;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$k0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/join/mgps/adapter/d2$a1;->r(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$k0$a;->b:Lcom/join/mgps/adapter/d2$k0;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$k0;->b:Lcom/join/mgps/adapter/d2$a1;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/join/mgps/adapter/d2$a1;->r(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    return-void
.end method
