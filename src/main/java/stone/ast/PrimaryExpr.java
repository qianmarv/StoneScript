package stone.ast;

import java.util.List;

public class PrimaryExpr extends ASTList {
	public static ASTree create(List<ASTree> children) {
		return children.size() == 1 ? children.get(0) : new PrimaryExpr(children);
	}

	public PrimaryExpr(List<ASTree> children) {
		super(children);
	}
}
