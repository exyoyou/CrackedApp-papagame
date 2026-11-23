.class public final synthetic Lcom/join/kotlin/ui/gameexpress/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;JJILcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/s;->b:Landroid/content/Context;

    iput-wide p2, p0, Lcom/join/kotlin/ui/gameexpress/s;->c:J

    iput-wide p4, p0, Lcom/join/kotlin/ui/gameexpress/s;->d:J

    iput p6, p0, Lcom/join/kotlin/ui/gameexpress/s;->e:I

    iput-object p7, p0, Lcom/join/kotlin/ui/gameexpress/s;->f:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/s;->b:Landroid/content/Context;

    iget-wide v1, p0, Lcom/join/kotlin/ui/gameexpress/s;->c:J

    iget-wide v3, p0, Lcom/join/kotlin/ui/gameexpress/s;->d:J

    iget v5, p0, Lcom/join/kotlin/ui/gameexpress/s;->e:I

    iget-object v6, p0, Lcom/join/kotlin/ui/gameexpress/s;->f:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;

    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->b(Landroid/content/Context;JJILcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;)V

    return-void
.end method
