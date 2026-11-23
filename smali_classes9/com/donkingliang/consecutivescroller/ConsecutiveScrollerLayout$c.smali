.class Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;


# direct methods
.method constructor <init>(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;)V
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
    iput-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$c;->b:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$c;->b:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->a(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;ZZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
