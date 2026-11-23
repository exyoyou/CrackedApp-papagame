.class public abstract Lcom/join/mgps/wrapper/SystemUiHider/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/wrapper/SystemUiHider/a$b;
    }
.end annotation


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x6

.field private static h:Lcom/join/mgps/wrapper/SystemUiHider/a$b;


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Landroid/view/View;

.field protected c:I

.field protected d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/wrapper/SystemUiHider/a;->h:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "anchorView",
            "flags"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/join/mgps/wrapper/SystemUiHider/a;->h:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    .line 11
    .line 12
    iput p3, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    .line 13
    .line 14
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;I)Lcom/join/mgps/wrapper/SystemUiHider/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "anchorView",
            "flags"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/wrapper/SystemUiHider/c;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/wrapper/SystemUiHider/b;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()Z
.end method

.method public d(Lcom/join/mgps/wrapper/SystemUiHider/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->h:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 6
    .line 7
    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
