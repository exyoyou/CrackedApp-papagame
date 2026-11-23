.class public final synthetic Li1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/byazt/ng/uj;

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/byazt/ng/uj;ZJILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/b;->b:Lcom/byazt/ng/uj;

    iput-boolean p2, p0, Li1/b;->c:Z

    iput-wide p3, p0, Li1/b;->d:J

    iput p5, p0, Li1/b;->e:I

    iput-object p6, p0, Li1/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Li1/b;->b:Lcom/byazt/ng/uj;

    iget-boolean v1, p0, Li1/b;->c:Z

    iget-wide v2, p0, Li1/b;->d:J

    iget v4, p0, Li1/b;->e:I

    iget-object v5, p0, Li1/b;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/byazt/ng/a;->a(Lcom/byazt/ng/uj;ZJILjava/lang/String;)V

    return-void
.end method
