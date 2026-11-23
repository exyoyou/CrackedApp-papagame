.class final Lcom/f$j;
.super Lcom/l$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$j;


# direct methods
.method constructor <init>(Lcom/f$k;Landroid/app/Service;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "serviceParam"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/l$g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/f$j;->b:Lcom/f$j;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/f$j;->a:Lcom/f$k;

    .line 7
    .line 8
    return-void
.end method
