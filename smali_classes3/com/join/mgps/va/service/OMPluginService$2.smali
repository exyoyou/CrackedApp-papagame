.class Lcom/join/mgps/va/service/OMPluginService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/va/service/OMPluginService;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/va/service/OMPluginService;


# direct methods
.method constructor <init>(Lcom/join/mgps/va/service/OMPluginService;)V
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
    iput-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

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
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->o0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/va/service/OMPluginService;->g(Lcom/join/mgps/va/service/OMPluginService;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    sget-object v1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/k;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 67
    .line 68
    iget-object v4, v1, Lcom/join/mgps/va/service/OMPluginService;->d:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v5, v1, Lcom/join/mgps/va/service/OMPluginService;->j:Ljava/lang/String;

    .line 71
    .line 72
    iget v6, v1, Lcom/join/mgps/va/service/OMPluginService;->f:I

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    invoke-static/range {v3 .. v8}, Lcom/join/mgps/mod/utils/PluginConfig;->setModConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/join/mgps/va/service/OMPluginService;->h(Lcom/join/mgps/va/service/OMPluginService;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$2;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 112
    .line 113
    iget-object v4, v0, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v5, v0, Lcom/join/mgps/va/service/OMPluginService;->d:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v6, v0, Lcom/join/mgps/va/service/OMPluginService;->j:Ljava/lang/String;

    .line 118
    .line 119
    iget v7, v0, Lcom/join/mgps/va/service/OMPluginService;->f:I

    .line 120
    .line 121
    iget v0, v0, Lcom/join/mgps/va/service/OMPluginService;->g:I

    .line 122
    .line 123
    if-nez v0, :cond_2

    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    const/4 v8, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, 0x0

    .line 129
    const/4 v8, 0x0

    .line 130
    :goto_0
    const/4 v9, 0x0

    .line 131
    invoke-virtual/range {v1 .. v9}, Lcom/join/mgps/va/overmind/i;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void
.end method
