.class Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/shared/OMLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->k:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "_extra_game_id"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->j:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "_extra_pkg"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->m:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "_extra_mod_version"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->q:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "_extra_mod_path"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 48
    .line 49
    iget v0, v0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->o:I

    .line 50
    .line 51
    const-string v1, "_extra_mod_code"

    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 57
    .line 58
    iget v0, v0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->p:I

    .line 59
    .line 60
    const-string v1, "_extra_mod_type"

    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->n:Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const-string v1, "_extra_user_id"

    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 79
    .line 80
    const/4 v1, 0x3

    .line 81
    invoke-static {v0, v1, p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->b(Lcom/xinzhu/overmind/shared/OMLauncherActivity;ILandroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x4

    .line 86
    if-ne v0, v1, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->c(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x5

    .line 95
    if-ne v0, v1, :cond_2

    .line 96
    .line 97
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->d(Lcom/xinzhu/overmind/shared/OMLauncherActivity;Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    const/4 v1, 0x6

    .line 108
    if-ne v0, v1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->e(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const/4 v1, 0x7

    .line 117
    if-ne v0, v1, :cond_4

    .line 118
    .line 119
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->f(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    const/16 v1, 0x8

    .line 126
    .line 127
    if-ne v0, v1, :cond_5

    .line 128
    .line 129
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->g(Lcom/xinzhu/overmind/shared/OMLauncherActivity;Landroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    const/16 p1, 0x9

    .line 140
    .line 141
    if-ne v0, p1, :cond_6

    .line 142
    .line 143
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$a;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->h(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 149
    return p1
.end method
