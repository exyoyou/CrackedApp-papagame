.class public Lcom/xinzhu/overmind/client/stub/StubTrampolineActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "StubTrampolineActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :try_start_0
    new-instance v1, Lt8/m;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lt8/m;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "_VM_|_trampoline_result_to_"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lt8/m;->c(Ljava/lang/String;)Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    const-string v1, "_VM_|_trampoline_result_who_"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const-string v1, "_VM_|_trampoline_request_code_"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    const-string v1, "_VM_|_trampoline_options_"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v20

    .line 38
    const-string v1, "_VM_|_trampoline_calling_package_"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v13

    .line 44
    const-string v1, "_VM_|_trampoline_flagsMask_"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const-string v3, "_VM_|_trampoline_flagsValues_"

    .line 51
    .line 52
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v0}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->sanityCheck()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_0

    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 68
    .line 69
    .line 70
    if-nez v8, :cond_1

    .line 71
    .line 72
    iget-object v1, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    .line 73
    .line 74
    const/high16 v2, 0x10000000

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    iget v12, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    .line 84
    .line 85
    iget-object v14, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    .line 86
    .line 87
    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    const/16 v16, 0x0

    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/16 v18, -0x1

    .line 96
    .line 97
    const/16 v19, 0x0

    .line 98
    .line 99
    invoke-virtual/range {v11 .. v20}, Lma/a;->y(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    and-int/lit16 v1, v1, -0xc4

    .line 104
    .line 105
    and-int/2addr v2, v1

    .line 106
    iget-object v3, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    not-int v1, v1

    .line 113
    and-int/2addr v1, v4

    .line 114
    or-int/2addr v1, v2

    .line 115
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget v4, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    .line 123
    .line 124
    iget-object v6, v0, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    .line 125
    .line 126
    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    const/4 v11, 0x0

    .line 131
    move-object v5, v13

    .line 132
    move-object/from16 v12, v20

    .line 133
    .line 134
    invoke-virtual/range {v3 .. v12}, Lma/a;->y(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void
.end method
