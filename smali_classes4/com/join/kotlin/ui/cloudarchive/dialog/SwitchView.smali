.class public Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

.field ll_elite_room:Landroid/view/View;

.field ll_standard_room:Landroid/view/View;

.field tv_elite_room_name:Landroid/widget/TextView;

.field tv_standard_room_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;)V
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
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0d0867

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0a0f38

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    .line 19
    .line 20
    const p1, 0x7f0a0eed

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    .line 28
    .line 29
    const p1, 0x7f0a1962

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_elite_room_name:Landroid/widget/TextView;

    .line 39
    .line 40
    const p1, 0x7f0a1a2d

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_standard_room_name:Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0eed

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    const-string v2, "#C1D0DD"

    .line 10
    .line 11
    const v3, 0x7f0812ad

    .line 12
    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const v0, 0x7f0a0f38

    .line 17
    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    .line 23
    .line 24
    const v0, 0x7f0812b3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_standard_room_name:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_elite_room_name:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-interface {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;->onSwitchChanged(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    invoke-interface {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;->onSwitchChanged(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    .line 63
    .line 64
    const v0, 0x7f0812b4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_standard_room_name:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_elite_room_name:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public setListener(Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public switchPosition1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_standard_room:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0812b3

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->ll_elite_room:Landroid/view/View;

    .line 10
    .line 11
    const v1, 0x7f0812ad

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_standard_room_name:Landroid/widget/TextView;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->tv_elite_room_name:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "#C1D0DD"

    .line 26
    .line 27
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-interface {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/SwitchView$OnSwitchChangedListener;->onSwitchChanged(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
