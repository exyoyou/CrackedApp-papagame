.class Lcom/airsaid/pickerviewlibrary/widget/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airsaid/pickerviewlibrary/widget/b;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->b(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    if-lt v0, v1, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/b;->a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    :cond_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->b(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lh/a;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 66
    .line 67
    invoke-static {v3}, Lcom/airsaid/pickerviewlibrary/widget/b;->a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v2, p1}, Lh/a;-><init>(Ljava/util/ArrayList;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->b(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b$a;->a:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->d(Lcom/airsaid/pickerviewlibrary/widget/b;)Li/c;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1, v0}, Li/c;->a(I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method
