.class Lcom/join/mgps/dialog/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/d0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/join/mgps/dto/CouponsData;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/CouponsData;->getMoney()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/dialog/d0;->c(Lcom/join/mgps/dialog/d0;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/join/mgps/dialog/d0;->a(Lcom/join/mgps/dialog/d0;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ge v0, p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/join/mgps/dialog/d0;->b(Lcom/join/mgps/dialog/d0;)Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "\u91d1\u989d\u4e0d\u8db3"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/join/mgps/dialog/d0;->d(Lcom/join/mgps/dialog/d0;)Lv6/c;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/join/mgps/dialog/d0$b;->b:Lcom/join/mgps/dialog/d0;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 99
    .line 100
    invoke-interface {p1, v0}, Lv6/c;->a(Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
