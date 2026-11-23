.class Lcom/join/mgps/activity/ShareWebActivity$n$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$n;->startIntent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$w;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$n$w;->b:Ljava/lang/String;

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
    .locals 4

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$n$w;->b:Ljava/lang/String;

    .line 8
    .line 9
    const-class v3, Lcom/join/mgps/Util/IntentDateBean;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 16
    .line 17
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 18
    .line 19
    const/16 v3, 0x78

    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    instance-of v2, v2, Ljava/util/Map;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    instance-of v3, v3, Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v2, 0x5

    .line 90
    if-ne v0, v2, :cond_1

    .line 91
    .line 92
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {v0, v2}, Lcom/MApplication;->O(Z)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$n$w;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 103
    .line 104
    iget-object v2, v2, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 105
    .line 106
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void
.end method
