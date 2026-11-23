.class Lcom/join/mgps/activity/MiniGameLoadingActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MiniGameLoadingActivity;->startCopyFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MiniGameLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

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
    .locals 10

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->n0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$000(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    sget-object v1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/k;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 43
    .line 44
    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 63
    .line 64
    iget-object v4, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modPath:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v5, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modVersion:Ljava/lang/String;

    .line 67
    .line 68
    iget v6, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modCode:I

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    invoke-static/range {v3 .. v8}, Lcom/join/mgps/mod/utils/PluginConfig;->setModConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$100(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$b;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 108
    .line 109
    iget-object v4, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->packageName:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v5, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modPath:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v6, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modVersion:Ljava/lang/String;

    .line 114
    .line 115
    iget v7, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modCode:I

    .line 116
    .line 117
    iget v0, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modType:I

    .line 118
    .line 119
    if-nez v0, :cond_2

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    const/4 v8, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    :goto_0
    const/4 v9, 0x0

    .line 127
    invoke-virtual/range {v1 .. v9}, Lcom/join/mgps/va/overmind/i;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method
