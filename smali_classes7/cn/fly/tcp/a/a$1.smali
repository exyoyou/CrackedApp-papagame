.class Lcn/fly/tcp/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/a/a;->a(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/fly/tcp/a/a;


# direct methods
.method constructor <init>(Lcn/fly/tcp/a/a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/a/a$1;->b:Lcn/fly/tcp/a/a;

    .line 2
    .line 3
    iput-wide p2, p0, Lcn/fly/tcp/a/a$1;->a:J

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/a/a$1;->b:Lcn/fly/tcp/a/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcn/fly/tcp/a/a;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    .line 5
    iget-wide v1, p0, Lcn/fly/tcp/a/a$1;->a:J

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method
