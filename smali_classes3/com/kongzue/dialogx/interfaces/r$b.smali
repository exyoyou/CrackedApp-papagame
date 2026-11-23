.class Lcom/kongzue/dialogx/interfaces/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

.field final synthetic c:Lcom/kongzue/dialogx/interfaces/r;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/interfaces/r;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/interfaces/r$b;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/r;->access$100(Lcom/kongzue/dialogx/interfaces/r;)Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$b;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v0, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$b;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/kongzue/dialogx/interfaces/r;->access$200(Lcom/kongzue/dialogx/interfaces/r;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object v3, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/kongzue/dialogx/interfaces/r;->access$100(Lcom/kongzue/dialogx/interfaces/r;)Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/r$b;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 72
    .line 73
    invoke-static {v4}, Lcom/kongzue/dialogx/interfaces/r;->access$100(Lcom/kongzue/dialogx/interfaces/r;)Landroidx/fragment/app/Fragment;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/kongzue/dialogx/interfaces/r;->onFragmentBind(Ljava/lang/Object;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/r;->access$300(Lcom/kongzue/dialogx/interfaces/r;)Landroid/app/Fragment;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    instance-of v0, v0, Landroid/widget/FrameLayout;

    .line 99
    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$b;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    instance-of v0, v0, Landroid/app/Activity;

    .line 109
    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$b;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/kongzue/dialogx/interfaces/r;->access$200(Lcom/kongzue/dialogx/interfaces/r;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    iget-object v3, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 133
    .line 134
    invoke-static {v3}, Lcom/kongzue/dialogx/interfaces/r;->access$300(Lcom/kongzue/dialogx/interfaces/r;)Landroid/app/Fragment;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/r$b;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iget-object v4, p0, Lcom/kongzue/dialogx/interfaces/r$b;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 153
    .line 154
    invoke-static {v4}, Lcom/kongzue/dialogx/interfaces/r;->access$300(Lcom/kongzue/dialogx/interfaces/r;)Landroid/app/Fragment;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/kongzue/dialogx/interfaces/r;->onFragmentBind(Ljava/lang/Object;Landroid/view/View;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    .line 163
    .line 164
    .line 165
    :cond_1
    return-void
.end method
