.class public final synthetic Lcom/papa91/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/HashMap;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/papa91/arc/http/HttpUtils$OnResult;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/utils/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/papa91/utils/a;->c:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/papa91/utils/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa91/utils/a;->e:Lcom/papa91/arc/http/HttpUtils$OnResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/utils/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/papa91/utils/a;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/papa91/utils/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/papa91/utils/a;->e:Lcom/papa91/arc/http/HttpUtils$OnResult;

    invoke-static {v0, v1, v2, v3}, Lcom/papa91/utils/HttpUtils;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    return-void
.end method
