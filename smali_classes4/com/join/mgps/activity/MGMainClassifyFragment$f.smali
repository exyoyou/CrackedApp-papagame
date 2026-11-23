.class Lcom/join/mgps/activity/MGMainClassifyFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->z:Landroid/widget/TextView;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->B:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->F:Lcom/join/mgps/pref/PrefDef_;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isReloadClassify()Lorg/androidannotations/api/sharedpreferences/d;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->O(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/pref/f;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackDownloadCenterVisible(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->I:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:[Ljava/lang/String;

    .line 74
    .line 75
    aget-object v0, v0, v2

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 85
    .line 86
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:[Ljava/lang/String;

    .line 87
    .line 88
    aget-object v1, v1, v2

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->b0(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->P(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/activity/k;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:[Ljava/lang/String;

    .line 102
    .line 103
    aget-object v1, v1, v2

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/k;->g0(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->d0()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$f;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->a0()V

    .line 116
    .line 117
    .line 118
    return-void
.end method
